<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Genre extends Model
{
    protected $table = 'genres';
    public $timestamps = false;
    /**
     * Get the movie that owns the genre.
     */
    // public function post()
    // {
    //     return $this->belongsTo('App\Models\Movie');
    // }
    public function genres()
    {
        return $this->hasMany('App\Models\Movie_Genre');
    }

    /**
     * The movies that belong to the genre.
     */
    public function movies()
    {
        return $this->belongsToMany('App\Models\Movie');
    }
}
