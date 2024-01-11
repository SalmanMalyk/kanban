<?php

namespace Database\Factories;

use App\Models\Card;
use App\Models\Column;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends Factory<Card>
 */
class CardFactory extends Factory
{
    public function definition(): array
    {
        return [
            'title' => $this->faker->words(3, true),
            'content' => $this->faker->realText(200),
            'column_id' => Column::factory()->create(),
        ];
    }
}
