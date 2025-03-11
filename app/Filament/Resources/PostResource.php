<?php

namespace App\Filament\Resources;

use App\Filament\Resources\PostResource\Pages;
use App\Filament\Resources\PostResource\RelationManagers;
use App\Models\Category;
use App\Models\Post;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Illuminate\Support\Str;
class PostResource extends Resource
{
    protected static ?string $model = Post::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';
    protected static ?string $navigationGroup = 'Quản lý chung';
    public static function getPluralModelLabel(): string
    {
        return 'Dịch vụ';
    }
    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\TextInput::make('title')
                ->required()
                ->live(onBlur: true)
                ->afterStateUpdated(
                    fn(string $operation, $state, Forms\Set $set) =>
                    $operation === 'create' ? $set('slug', Str::slug($state)) : null
                )
                ->maxLength(255)
                ->label('Tên dịch vụ'), // Việt hóa nhãn
                Forms\Components\TextInput::make('slug')
                ->dehydrated()
                ->unique(Post::class, 'slug', ignoreRecord: true) // Sửa từ Category::class thành Post::class
                ->required()
                ->maxLength(255)
                ->label('Slug'),
                Forms\Components\Textarea::make('short_description')
                    ->required()
                    ->columnSpanFull()
                    ->label('Mô tả ngắn'),
                Forms\Components\RichEditor::make('long_description')
                    ->required()
                    ->columnSpanFull()
                    ->label('Mô tả dài'),
                Forms\Components\FileUpload::make('banner')
                    ->image()
                    ->label('Ảnh dịch vụ'),
                Forms\Components\Select::make('category_id')
                    ->options(Category::all()->pluck('name', 'id'))
                    ,
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('id')
                    ->label('ID')
                    ->sortable(),
                    Tables\Columns\ImageColumn::make('banner')
                    ->label('Ảnh dịch vụ')
                    ->searchable(),
                Tables\Columns\TextColumn::make('title')
                    ->label('Tên dịch vụ')
                    ->searchable(),

                Tables\Columns\TextColumn::make('category.name')
                    ->label('Danh mục')
                    ->numeric()
                    ->sortable(),
                Tables\Columns\TextColumn::make('created_at')
                    ->label('Ngày tạo')
                    ->dateTime()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
                Tables\Columns\TextColumn::make('updated_at')
                    ->label('Ngày cập nhật')
                    ->dateTime()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\ActionGroup::make([
                    Tables\Actions\ViewAction::make()
                        ->label('Xem'), // Đổi nhãn sang tiếng Việt
                    Tables\Actions\EditAction::make()
                        ->label('Chỉnh Sửa'), // Đổi nhãn sang tiếng Việt
                    Tables\Actions\DeleteAction::make()
                        ->label('Xóa'), // Đổi nhãn sang tiếng Việt
                ])
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make()
                        ->label('Xóa'), // Đổi nhãn sang tiếng Việt
                ]),
            ]);
    }
     public static function getNavigationBadge(): ?string
    {
        return static::getModel()::count();
    }
    public static function getRelations(): array
    {
        return [
            //
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListPosts::route('/'),
            'create' => Pages\CreatePost::route('/create'),
            'edit' => Pages\EditPost::route('/{record}/edit'),
        ];
    }
}
