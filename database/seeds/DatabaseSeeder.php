<?php

use App\Post;
use App\User;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {   
        //post for each user
        factory(User::class,10)->create()->each(function($user){
            $user->posts()->save(factory(Post::class)->make());
        });

        //for post for user but not each
        //  factory(User::class,10)->create();
        //  factory(Post::class,10)->create();
    }
}
