<?php

namespace App\Http\Resources\Cart;

use Illuminate\Http\Resources\Json\ResourceCollection;

class CartCollection extends ResourceCollection
{
    /**
     * Transform the resource collection into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return[
            'id' => $this->id,
            'product_id' => $this->product_id,
            'user_id' => $this->user_id,
            'product_quantity' => $this->product_quantity
        ];
    }
}
