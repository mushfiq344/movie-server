<?php

namespace App\Http\Controllers;

use Intervention\Image\ImageManagerStatic as Image;
use Illuminate\Http\Request;
use App\Models\Movie;
use App\Models\Comment;
use App\Models\Genre;
use App\User;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class MovieController extends Controller
{
    /**
     * Movie List
     *
     * @return array
     */


    function index()
    {

        $movies = Movie::paginate(3);
        return $movies;
    }
    /**
     * return movie with given slug_name
     *
     * @param slug_name
     * @return array
     */
    function movie($slug_name)
    {

        $movie = Movie::where('slug_name', $slug_name)->first();

        if ($movie) {
            $movie->genres = Genre::where("movie_id", $movie->id)->get();
            return $movie;
        } else {
            return "invalid";
        }
    }
    /**
     * Upload Movie
     *
     * @param Request
     * @return object
     */
    public function movieSubmit(Request $request)
    {
        // validator
        $validator = Validator::make(
            $request->all(),
            array(
                'slug_name' => 'required|unique:movies'
            )
        );

        // for failed validation
        if ($validator->fails()) {
            $errorString = implode(",", $validator->messages()->all());
            return response()->json($errorString);
        }

        $movie = new Movie;

        $movie->name = $request->name;
        $movie->slug_name = $request->slug_name;
        $movie->description = $request->description;

        $movie->date = $request->date;
        $movie->release = $request->release;

        $movie->rating = $request->rating;

        $movie->country = $request->country;
        $movie->price = $request->price;
        $movie->ticket = $request->ticket;



        if ($request->hasfile('myimages')) {
            foreach ($request->file('myimages') as $image) {

                $imageName = time() . '.' . $image->getClientOriginalExtension();
                $image->move(public_path() . '/uploads/', $imageName);
                $img = Image::make(public_path() . '/uploads/' . $imageName);
                $img->resize(500, 750);
                $img->save();

                $movie->photo = url('uploads/' . $imageName);
            }
        } else {
        }

        $movie->save();
        $genres = [];
        // saving movie genres
        $genres = explode(',', $request->genres);

        foreach ($genres as $genre) {
            if ($genre != "") {
                $newGenre = new Genre;
                $newGenre->name = $genre;
                $newGenre->movie_id = $movie->id;
                $newGenre->save();
            }
        }

        return response()->json("Upload Successful!");
    }

    /**
     *comments of a movie
     *
     * @param slug_name
     * @return array
     */
    function comments($slug_name)
    {
        $movieID = $this->slugNameToID($slug_name);
        if ($movieID == "invalid") {
            return "invalid";
        }
        $comments = Comment::where('movie_id', $movieID)->get();
        return $comments;
    }
    /**
     *insert a comment in db
     *
     * @param Request
     * @return array
     */
    function insertComment(Request $request)
    {

        $movieID = $this->slugNameToID($request->slug_name);
        if ($movieID == "invalid") {
            return "invalid";
        }

        $comment = new Comment;
        $comment->name = $request->name;
        $comment->comment = $request->comment;
        $comment->movie_id = $movieID;
        $comment->user_id = $request->user_id;
        $comment->save();
        return response()->json($comment);
    }
    /**
     *return id of a movie using slugname
     *
     * @param slug_name
     * @return int
     */
    public function slugNameToID($slug_name)
    {
        $movie = Movie::where('slug_name', $slug_name)->first();
        if ($movie) {
            return $movie['id'];
        } else {
            return "invalid";
        }
    }
}
