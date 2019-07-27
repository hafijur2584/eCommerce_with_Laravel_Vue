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
            'name' => 'required|string|max:191',
            'slug' => 'required|string|max:191|unique:products',
            'model' => 'required|string|max:191',
            'brand' => 'required|string|max:191',
            'color' => 'required|string|max:191',
            'price' => 'required|numeric',
            'stock' => 'required|numeric',
            'description' => 'required',
            'details' => 'required'
        ];
    }
}
