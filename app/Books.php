<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Books extends Model
{
    public function authors() {
        return $this->belongsTo('App\Authors');
    }

    public function publishers() {
        return $this->belongsTo('App\Publishers');
    }
}
