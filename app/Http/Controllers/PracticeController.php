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

class PracticeController extends Controller
{
    function index()
    {

        $movie = Movie::where('id', 45)->with('genres')->first();

        return $movie;
    }

    function genres()
    {

        $genres = Genre::all();
        return $genres;
        // return response()->json(['status' => 'Token is valid', 'token' => true, 'data' => $genres]);
    }
}
