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
     * Get the genres for the movies
     */
    public function genres()
    {
        return $this->belongsToMany('App\Models\Genre');
    }


    /**
     * Get the Movie's image.
     */
    public function image()
    {
        return $this->morphOne('App\Models\Image', 'imageable');
    }
}
