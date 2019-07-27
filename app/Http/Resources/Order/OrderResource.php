<?php

namespace App\Http\Resources\Order;

use Illuminate\Http\Resources\Json\JsonResource;

class OrderResource extends JsonResource
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
            'invoice_id' => $this->invoice_id,
            'user_id' => $this->user_id,
            'name' => $this->name,
            'phone_no' => $this->phone_no,
            'shipping_address' => $this->shipping_address,
            'payment' => $this->payment,
            'total_price' => $this->total_price,
            'email' => $this->email,
            'is_paid' => $this->is_paid,
            'is_completed' => $this->is_completed,
            'is_seen_by_admin' => $this->is_seen_by_admin
        ];
    }
}
