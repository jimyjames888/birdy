<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\User;
use App\Tweet;
class Comment extends Model
{

    protected $fillable = ['tweet_id', 'user_id', 'message', 'gif_comment'];

    public function user(){
        return $this->belongsTo('App\User');
    }
    public function tweet(){
        return $this->belongsTo('App\Tweet');
    }
}
