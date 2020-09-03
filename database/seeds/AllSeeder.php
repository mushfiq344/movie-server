<?php

use App\Http\Controllers\MovieController;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use App\Models\Movie as Movie;
use App\Models\Genre as Genre;
use App\Models\Comment as Comment;
use App\Models\Movie_Genre as Movie_Genre;

class AllSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //adding total 10 users in user table
        for ($x = 0; $x <= 9; $x++) {
            DB::table('users')->insert([
                'name' => Str::random(10),
                'email' => Str::random(10) . '@gmail.com',
                'Password' => bcrypt('12345678')
            ]);
        }
        //adding total 10 movies in movies table
        $faker = Faker::create();
        for ($x = 0; $x <= 2; $x++) {

            $movie = new Movie;
            $movie->name = Str::random(10);
            $movie->slug_name = Str::random(10);
            $movie->description = Str::random(10);
            $movie->release = date('Y-m-d');
            $movie->date = date('Y-m-d');
            $movie->country = Str::random(10);
            $movie->save();
            // one genre for each movie
            $ids = Genre::pluck('id');
            $genreId = $faker->randomElement($ids);
            $genre = new Movie_Genre;
            $genre->genre_id = $genreId;
            $genre->movie_id = $movie->id;
            $genre->save();
        }

        $usersIDs = DB::table('users')->pluck('id')->all();
        $moviesIDs = DB::table('movies')->pluck('id')->all();



        // adding total 6 comments for each movie in comments table  
        foreach ($moviesIDs as $movieID) {
            for ($x = 0; $x <= 5; $x++) {
                // getting random userID 
                $userID = $faker->randomElement($usersIDs);
                $user = DB::table('users')->where('id', $userID)->pluck('name');
                // creating comment
                $comment = new Comment;
                $comment->name = $user[0];
                $comment->movie_id = $movieID;
                $comment->user_id = $userID;
                $comment->comment = Str::random(10);
                $comment->save();
            }
        }
    }
}
