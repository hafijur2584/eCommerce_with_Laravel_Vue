
@if(Auth::check())
    <form action="{{ route('cart.store') }}" method="post">
        @csrf
        <input type="hidden" name="product_id" value="{{ $product->id }}">
        <input type="hidden" name="product_quantity" value="1">

        <button type="submit" class="btn btn-warning btn-sm float-right"><i class="fa fa-shopping-cart"></i>  Add To Cart</button>
    </form>


@else

    <button type="button" class="btn btn-warning btn-sm float-right" data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo">Add To Cart</button>
@endif