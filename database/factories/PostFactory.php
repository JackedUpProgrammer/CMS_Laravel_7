<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Post;
use App\User;
use App\Model;
use Faker\Generator as Faker;

$factory->define(Post::class, function (Faker $faker) {
    return [
      //  'user_id'=>factory('App\User'),
        'user_id'=>factory(User::class),
       'title'=>$faker->sentence,
       'post_image'=>$faker->imageUrl('900','300'),
       'body'=>$faker->paragraph
    ];
});