<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Follower extends Model
{

    protected $fillable = ['user_id', 'followee_id'];

    public function users(){

    }
}
