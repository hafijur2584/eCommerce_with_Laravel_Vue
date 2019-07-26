<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ProductRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'name' => 'require|max:255',
            'model' => 'require|max:100',
            'brand' => 'require|max:100',
            'color' => 'require|max:100',
            'price' => 'require',
            'stock' => 'require|min:0|max:2000',
            'description' => 'require',
            'details' => 'require'
        ];
    }
}
