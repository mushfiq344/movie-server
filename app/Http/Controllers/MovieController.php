<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Movie;
use App\Models\Comment;
use App\User;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class MovieController extends Controller
{
    function index()
    {
        $movies = Movie::paginate(2);
        return $movies;
    }
	public function movieSubmit(Request $request)
    {
    	return response()->json([$request->all()]);
    }
}
