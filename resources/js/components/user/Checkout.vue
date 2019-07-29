<template>
    <section>
        <Master></Master>
        <!-- ========================= SECTION MAIN ========================= -->
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
                                <th scope="col">Model</th>
                                <th scope="col">Color</th>
                                <th scope="col" width="120">Quantity</th>
                                <th scope="col" width="120">Price</th>
                                <th scope="col" width="120">Total</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>
                                    <figure class="media">
                                        <div class="img-wrap"><img src="user/images/items/4.jpg" class="img-thumbnail img-sm"></div>
                                        <figcaption class="media-body">
                                            <h6 class="title text-truncate">Product Name</h6>
                                        </figcaption>
                                    </figure>
                                </td>
                                <td>
                                    <dd>model</dd>
                                </td>
                                <td>
                                    <h5>color</h5>
                                </td>
                                <td>
                                    <h5>2</h5>
                                </td>
                                <td>
                                    <div class="price-wrap">
                                        <var class="price">USD 455</var>
                                    </div> <!-- price-wrap .// -->
                                </td>
                                <td>
                                    <div class="price-wrap">
                                        <var class="price">USD 567</var>
                                    </div> <!-- price-wrap .// -->
                                </td>

                            </tr>

                            </tbody>
                        </table>
                    </div> <!-- card.// -->

                </main> <!-- col.// -->
                <aside class=" col-sm-4">
                    <form action="" method="post">
                        <div class="box">       <h4> Billing Information</h4><hr>
                            <div class="col form-group">
                                <label>Name</label>
                                <input type="text" name="name" class="form-control" value="" placeholder="">
                            </div> <!-- form-group end.// -->
                            <div class="col form-group">
                                <label>Email</label>
                                <input type="email" class="form-control" name="email" value="" placeholder="">
                            </div> <!-- form-group end.// -->

                            <div class="col form-group">
                                <label>Mobile No</label>
                                <input type="text" class="form-control" name="phone_no" value="" placeholder="">
                            </div> <!-- form-group end.// -->
                            <div class="col form-group">
                                <label>Shipping Address</label>
                                <input type="text" class="form-control" name="shipping_address" value="" placeholder="">
                            </div> <!-- form-group end.// -->


                        </div>

                        <div class="alert alert-warning">
                            <dl class="dlist-align">
                                <dt>Total price: </dt>
                                <dd class="text-right">$ 566</dd>
                            </dl>
                            <dl class="dlist-align">
                                <dt>Shipping:</dt>
                                <dd class="text-right">$ 10</dd>
                            </dl>
                            <dl class="dlist-align h4">
                                <dt>Total:</dt>
                                <dd class="text-right"><strong>USD 6788</strong></dd>
                                <input type="hidden" name="total_price" value="">
                            </dl>

                        </div>
                        <div class="alert alert-info">
                            <select name="payment" class="form-control">
                                <option value="">Payment Method</option>
                                <option value="CashOnDelivery">Cash On Delivery</option>
                            </select>


                        </div>

                        <center>
                            <button type="submit" class="btn btn-success btn-block btn-lg">Confirm order</button>
                        </center>
                    </form>
                </aside> <!-- col.// -->
            </div>

        </div> <!-- container .//  --><br><br>
    </section>
    <!-- ========================= SECTION CONTENT END// ========================= -->
    </section>
    
</template>

<script>
    let Master = require('./Master.vue').default;
    export default {
        name: "Checkout",
        components:{Master}
    }
</script>

<style scoped>

</style>