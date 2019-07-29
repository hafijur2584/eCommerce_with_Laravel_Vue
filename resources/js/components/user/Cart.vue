<template>
    <!-- ========================= SECTION MAIN ========================= -->
    <section>
        <Master></Master>
        <section style="min-height: 600px;" class="section-content bg padding-y-sm">
        
        <div class="container">
            <nav class="mb-3">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                    <li class="breadcrumb-item"><a href="#">Category name</a></li>
                    <li class="breadcrumb-item"><a href="#">Sub category</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Items</li>
                </ol>
            </nav>
            <div class="row">
                <main class="col-sm-8">

                    <div class="card">
                        <table class="table table-hover shopping-cart-wrap">
                            <thead class="text-muted">
                            <tr>
                                <th scope="col">Product</th>
                                <th scope="col" width="120">Quantity</th>
                                <th scope="col" width="120">Price</th>
                                <th scope="col" width="120">Total</th>
                                <th scope="col" class="text-right" width="200">Action</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>
                                    <figure class="media">
                                        <div class="img-wrap"><img src="user/images/items/4.jpg" class="img-thumbnail img-sm"></div>
                                        <figcaption class="media-body">
                                            <h6 class="title text-truncate">Product name</h6>
                                            <dl class="dlist-inline small">
                                                <dt>Model: </dt>
                                                <dd>model</dd>
                                            </dl>
                                            <dl class="dlist-inline small">
                                                <dt>Color: </dt>
                                                <dd>color</dd>
                                            </dl>
                                        </figcaption>
                                    </figure>
                                </td>
                                <td>
                                    <form class="" action="">
                                        <input class="form-control" type="number" value="1">
                                    </form>
                                </td>
                                <td>
                                    <div class="price-wrap">
                                        <var class="price">USD 544</var>
                                    </div> <!-- price-wrap .// -->
                                </td>
                                <td>
                                    <div class="price-wrap">
                                        <var class="price">USD 4556</var>
                                    </div> <!-- price-wrap .// -->
                                </td>
                                <td class="text-right">
                                    <a data-original-title="Save to Wishlist" title="" href="" class="btn btn-outline-success" data-toggle="tooltip"> <i class="fa fa-heart"></i></a>


                                </td>
                            </tr>

                            </tbody>
                        </table>


                    </div> <!-- card.// -->

                </main> <!-- col.// -->
                <aside class="col-sm-4">

                    <div class="alert alert-warning">
                        <dl class="dlist-align">
                            <dt>Total price: </dt>
                            <dd class="text-right">$ 565</dd>
                        </dl>
                        <dl class="dlist-align">
                            <dt>Shipping:</dt>
                            <dd class="text-right">$ 10</dd>
                        </dl>
                        <dl class="dlist-align h4">
                            <dt>Total:</dt>
                            <dd class="text-right"><strong>USD 5467</strong></dd>
                        </dl>

                    </div>


                    <center>

                        <a href="" class="btn btn-success btn-block btn-lg"> Place your order</a>
                        <a href="" class="btn btn-info btn-block btn-lg"> Continue Shopping</a>
                    </center>
                </aside> <!-- col.// -->
            </div>

        </div> <!-- container .//  --><br><br>
    </section>
    </section>
    <!-- ========================= SECTION CONTENT END// ========================= -->
</template>

<script>
    let Master = require('./Master.vue').default;
    export default {
        name: "Cart",
        components:{Master}
    }
</script>

<style scoped>

</style>