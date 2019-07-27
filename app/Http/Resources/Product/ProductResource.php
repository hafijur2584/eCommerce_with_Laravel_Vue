<?php

namespace App\Http\Resources\Product;

use Illuminate\Http\Resources\Json\JsonResource;

class ProductResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return [
            'id' => $this->id,
            'name' => $this->name,
            'model' => $this->model,
            'brand' => $this->brand,
            'color' => $this->color,
            'price' => $this->price,
            'stock' => $this->stock == 0 ? 'Out Of Stock' : $this->stock,
            'description' => $this->description,
            'details' => $this->details,
            'images' => $this->images
        ];
    }
}
