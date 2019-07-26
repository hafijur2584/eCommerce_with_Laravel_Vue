<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Review extends Model
{

    public function Product(){
        return $this->belongsTo(Product::class);
    }
}
