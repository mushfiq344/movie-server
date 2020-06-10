<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Genre extends Model
{
    protected $table = 'movie_genres';
    public $timestamps = false;
    /**
     * Get the movie that owns the genre.
     */
    public function post()
    {
        return $this->belongsTo('App\Models\Movie');
    }
}
