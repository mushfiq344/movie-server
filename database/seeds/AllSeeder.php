<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class AllSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // adding total 50 users in user table
        for ($x = 0; $x <= 49; $x++) {
            DB::table('users')->insert([
                'name' => Str::random(10),
                'email' => Str::random(10) . '@gmail.com',
                'Password' => bcrypt('12345678')
            ]);
        }
        // adding total 10 movies in movies table  
        for ($x = 0; $x <= 9; $x++) {
            DB::table('movies')->insert([
                'name' => Str::random(10),
                'description' => Str::random(10),
                'release' => date('Y-m-d'),
                'date' => date('Y-m-d'),
                "country" =>  Str::random(10),
                "photo" => Str::random(10)
            ]);
        }

        $usersIDs = DB::table('users')->pluck('id')->all();
        $moviesIDs = DB::table('movies')->pluck('id')->all();

        $faker = Faker::create();

        // adding total 6 comments for each movie in comments table  
        foreach ($moviesIDs as $movieID) {
            for ($x = 0; $x <= 5; $x++) {
                DB::table('comments')->insert([
                    'movie_id' => $movieID,
                    'user_id' => $faker->randomElement($usersIDs),
                    'comment' => Str::random(10)
                ]);
            }
        }
    }
}