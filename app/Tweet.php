<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\User;
use App\Comments;
class Tweet extends Model
{
    // define what itmes we allow to be edited
    protected $fillable =['user_id', 'body'];

    public function user(){
        return $this->belongsTo('App\User');
    }
    public function comments(){
        return $this->hasMany('App\Comment');
    }
    public function likes(){
        return $this->hasMany('App\Like');
    }
    public function likedByCurrentUser()
    {
        $userId = auth()->id();

        $like = $this->likes->first(function ($v) use ($userId) {
            return $v->user_id ==$userId;
        });
        if($like) {
            return true;
        }
        return false;
    }
}
