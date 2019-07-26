<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    protected $fillable = ['name','model','color','brand','stock','description','details'];


    public function reviews(){
        return $this->hasMany(Review::class);
    }


}
