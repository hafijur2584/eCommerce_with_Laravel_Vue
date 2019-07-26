<?php

/* @var $factory \Illuminate\Database\Eloquent\Factory */

use App\Model\Product;
use Faker\Generator as Faker;

$factory->define(Product::class, function (Faker $faker) {
    return [
        'name' => $faker->word,
        'details' => $faker->paragraph,
        'description' => $faker->paragraph,
        'price' =>$faker->numberBetween(100,1000),
        'stock' => $faker->randomDigit,
        'model' => $faker->randomDigit,
        'brand' => $faker->word,
        'color' => $faker->word
    ];
});
