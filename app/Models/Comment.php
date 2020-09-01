<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Comment extends Model
{
    //
    protected $table = 'comments';
    /**
     * Get the post that owns the comment.
     */
    public function movie()
    {
        return $this->belongsTo('App\Models\Movie', 'movie_id', 'id');
    }
    /**
     * Get the post that owns the comment.
     */
    public function user()
    {
        return $this->belongsTo('App\User', 'user_id', 'id');
    }
}
