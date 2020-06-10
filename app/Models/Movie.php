<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Movie extends Model
{
    protected $table = 'movies';

    /**
     * Get the comments for the movie.
     */
    public function comments()
    {
        return $this->hasMany('App\Models\Comment');
    }
    /**
     * Get the genres for the blog post.
     */
    public function genres()
    {
        return $this->hasMany('App\Models\Genre');
    }
}
