<?php

namespace App\Http\Controllers;

use Intervention\Image\ImageManagerStatic as Image;
use Illuminate\Http\Request;
use App\Models\Movie;
use App\Models\Comment;
use App\Models\Genre;
use App\Models\Movie_Genre;
use App\User;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class PracticeController extends Controller
{
    function index()
    {
        // $ids = DB::table('genres')
        //     ->whereIn('genres.id', [1, 3])
        //     ->join('genre_movie', 'genres.id', '=', 'genre_movie.genre_id')
        //     ->join('movies', 'movies.id', '=', 'genre_movie.movie_id')
        //     ->distinct('movies.id')
        //     ->pluck('movies.id');

        $ids = Genre::pluck('id');

        return $ids;
    }

    function genres()
    {

        $genres = Genre::all();
        return $genres;
        // return response()->json(['status' => 'Token is valid', 'token' => true, 'data' => $genres]);
    }
}
