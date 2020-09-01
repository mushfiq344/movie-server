<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Movie_Genre extends Model
{
    protected $table = 'genre_movie';
    public $timestamps = false;
    /**
     * Get the movie and genre that owns the movies_genres.
     */
    public function genres()
    {
        return $this->belongsTo('App\Models\Movie', 'App\Models\Genre');
    }
}
