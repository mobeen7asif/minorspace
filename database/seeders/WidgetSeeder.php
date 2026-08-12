<?php

namespace Database\Seeders;

use Botble\Base\Supports\BaseSeeder;
use Botble\LanguageAdvanced\Database\Seeders\Traits\HasWidgetSeeder as HasWidgetTranslationSeeder;
use Botble\Widget\Database\Traits\HasWidgetSeeder;
use Botble\Widget\Models\Widget as WidgetModel;

class WidgetSeeder extends BaseSeeder
{
    use HasWidgetSeeder;
    use HasWidgetTranslationSeeder;

    public function run(): void
    {
        WidgetModel::query()->truncate();

        $data = [
            [
                'widget_id' => 'CustomMenuWidget',
                'sidebar_id' => 'footer_sidebar',
                'position' => 1,
                'data' => [
                    'id' => 'CustomMenuWidget',
                    'name' => 'Useful Links',
                    'menu_id' => 'useful-links',
                ],
            ],
            [
                'widget_id' => 'CustomMenuWidget',
                'sidebar_id' => 'footer_sidebar',
                'position' => 2,
                'data' => [
                    'id' => 'CustomMenuWidget',
                    'name' => 'Categories',
                    'menu_id' => 'categories',
                ],
            ],
            [
                'widget_id' => 'CustomMenuWidget',
                'sidebar_id' => 'footer_sidebar',
                'position' => 3,
                'data' => [
                    'id' => 'CustomMenuWidget',
                    'name' => 'My Account',
                    'menu_id' => 'my-account',
                ],
            ],
            [
                'widget_id' => 'BlogSearchWidget',
                'sidebar_id' => 'primary_sidebar',
                'position' => 0,
                'data' => [
                    'id' => 'BlogSearchWidget',
                ],
            ],
            [
                'widget_id' => 'BlogCategoriesWidget',
                'sidebar_id' => 'primary_sidebar',
                'position' => 2,
                'data' => [
                    'id' => 'BlogCategoriesWidget',
                    'name' => 'Categories',
                    'number_display' => 10,
                ],
            ],
            [
                'widget_id' => 'RecentPostsWidget',
                'sidebar_id' => 'primary_sidebar',
                'position' => 3,
                'data' => [
                    'id' => 'RecentPostsWidget',
                    'name' => 'Recent Posts',
                    'number_display' => 5,
                ],
            ],
            [
                'widget_id' => 'TagsWidget',
                'sidebar_id' => 'primary_sidebar',
                'position' => 4,
                'data' => [
                    'id' => 'TagsWidget',
                    'name' => 'Tags',
                    'number_display' => 5,
                ],
            ],
        ];

        $this->createWidgets($data);

        $this->seedWidgets(['ar', 'vi', 'fr', 'id', 'tr']);
    }

    protected function applyWidgetTranslations(array $data, array $translations, string $locale): array
    {
        foreach (['name', 'title', 'subtitle', 'about'] as $key) {
            if (isset($data[$key]) && is_string($data[$key])) {
                $data[$key] = $this->translateValue($translations, $data[$key]);
            }
        }

        if (! empty($data['menu_id']) && is_string($data['menu_id'])) {
            $data['menu_id'] = $this->localizedSlug($data['menu_id'], $locale);
        }

        return $data;
    }

    protected function translateValue(array $translations, ?string $value): ?string
    {
        if ($value === null) {
            return null;
        }

        $trimmed = trim($value);

        return $translations[$value]
            ?? $translations[$trimmed]
            ?? $value;
    }

    protected function localizedSlug(string $slug, string $locale): string
    {
        return sprintf('%s-%s', $slug, $locale);
    }
}
