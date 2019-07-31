<template>
    <section>
        <header class="section-header">
            <nav class="navbar navbar-expand-lg navbar-light">
                <div class="container">
                    <a class="navbar-brand" href="/"><img class="logo" src="/user/images/logos/logo122.png" alt="e-commerce html" title="e-commerce">   </a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTop" aria-controls="navbarTop" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarTop">
                        <ul class="navbar-nav mr-auto">

                        </ul>
                        <ul class="navbar-nav">
                            <li class="nav-item"><a href="index.php" class="nav-link" > <i class="fa fa-home"></i>  </a></li>
                            <li class="nav-item"><router-link to="/" class="nav-link" > Home </router-link></li>
                            <li class="nav-item"><router-link to="/product" class="nav-link" > Product  </router-link></li>
                            <li class="nav-item"><router-link to="/singleProduct" class="nav-link" > single product  </router-link></li>
                            <li class="nav-item"><router-link to="/checkout" class="nav-link" > Checkout  </router-link></li>
                        </ul> <!-- navbar-nav.// -->
                    </div> <!-- collapse.// -->
                </div>
            </nav>

            <section class="header-main shadow-sm">
                <div class="container">
                    <div class="row-sm align-items-center">
                        <div class="col-lg-4-24 col-sm-3">
                            <div class="category-wrap dropdown py-1">
                                <button type="button" class="btn btn-light  dropdown-toggle" data-toggle="dropdown" ><i class="fa fa-bars"></i> Categories</button>
                                <div class="dropdown-menu">

                                    <a class="dropdown-item"  href="product-category.php">Notebook</a>
                                    <a class="dropdown-item" href="#">Printer </a>
                                    <a class="dropdown-item" href="#">Desktop </a>
                                    <a class="dropdown-item" href="#">Toner/Cartiridge </a>
                                    <a class="dropdown-item" href="#">Monitor  </a>
                                    <a class="dropdown-item" href="#">Office Equipment  </a>
                                    <a class="dropdown-item" href="#">Tablet PC </a>
                                    <a class="dropdown-item" href="#">Smartwatch </a>
                                    <a class="dropdown-item" href="#">Scanner </a>
                                    <a class="dropdown-item" href="#">Software  </a>
                                    <a class="dropdown-item" href="#">Network  </a>
                                    <a class="dropdown-item" href="#">Audio/Video  </a>
                                    <a class="dropdown-item" href="#">Accessories  </a>
                                    <a class="dropdown-item" href="#">Gaming  </a>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-11-24 col-sm-8">
                            <form action="#" class="py-1">
                                <div class="input-group w-100">
                                    <select class="custom-select"  name="category_name">
                                        <option value="">All type</option>
                                        <option value="">Special</option>
                                        <option value="">Only best</option>
                                        <option value="">Latest</option>
                                    </select>
                                    <input type="text" class="form-control" style="width:50%;" placeholder="Search">
                                    <div class="input-group-append">
                                        <button class="btn btn-warning" type="submit">
                                            <i class="fa fa-search"></i> Search
                                        </button>
                                    </div>
                                </div>
                            </form> <!-- search-wrap .end// -->
                        </div> <!-- col.// -->
                        <div class="col-lg-9-24 col-sm-12">
                            <div class="widgets-wrap float-right row no-gutters py-1">
                                <div class="col-auto">
                                    <div class="widget-header dropdown">
                                        <a href="#" data-toggle="dropdown" data-offset="20,10">
                                            <div class="icontext">
                                                <div class="icon-wrap"><i class="text-warning icon-sm fa fa-user"></i></div>
                                                <div class="text-wrap text-dark">
                                                    Sign in <br>
                                                    My account <i class="fa fa-caret-down"></i>
                                                </div>
                                            </div>
                                        </a>
                                        <div class="dropdown-menu">
                                            <form class="px-4 py-3">
                                                <div class="form-group">
                                                    <label>Email address</label>
                                                    <input v-model="email" type="email" class="form-control" autocomplete placeholder="email@example.com">
                                                </div>
                                                <div class="form-group">
                                                    <label>Password</label>
                                                    <input v-model="password" type="password" class="form-control" placeholder="Password">
                                                </div>
                                                <button @click.prevent="login" class="btn btn-primary">Sign in</button>
                                            </form>
                                            <hr class="dropdown-divider">
                                            <a class="dropdown-item" href="sign-up.php">Have account? Sign up</a>
                                            <a class="dropdown-item" href="#">Forgot password?</a>
                                        </div> <!--  dropdown-menu .// -->

                                    </div>



                                </div> <!-- col.// -->
                                <div class="col-auto">
                                    <div class="widget-header">
                                        <div class="icontext">
                                            <div class="text-wrap text-dark mt-1">
                                                <a data-toggle="modal" data-target="#cart" class="widget-header">
                                                    <div class="icontext">
                                                        <div class="icon-wrap"><i class="text-warning icon-sm fa fa-shopping-cart"></i></div>
                                                        <div class="text-wrap text-dark mt-1">
                                                            Cart<br> {{ badge}}
                                                        </div>
                                                    </div>
                                                </a>

                                                
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div> <!-- col.// -->
                        <div class="col-auto">
                            <a data-toggle="modal" data-target=".bd-example-modal-lg" class="widget-header">
                                <div class="icontext">
                                    <div class="text-wrap text-dark">
                                        <div class="mt-1">Invoice</div>
                                    </div>
                                </div>
                            </a>
                        </div> <!-- col.// -->
                    </div> <!-- widgets-wrap.// row.// -->
                </div> <!-- col.// -->
            </div> <!-- row.// -->
        </div> <!-- container.// -->
    </section> <!-- header-main .// -->
</header> <!-- section-header.// -->
<!-- header end -->
<!-- ========================= SECTION MAIN ========================= -->
<section style="background: #f4f4f4!important" class="section-main bg padding-y-sm">

    <div class="container">
        <div class="card">
            <div class="card-body">
                <div class="row row-sm">
                    <aside class="col-md-3">
                        <h5 class="text-uppercase">My Shop</h5>
                        <ul class="menu-category">
                            <li> <a href="">Notebook</a></li>
                            <li> <a href="#">Printer </a></li>
                            <li> <a href="#">Desktop </a></li>
                            <li> <a href="#">Toner/Cartiridge </a></li>
                            <li> <a href="#">Monitor  </a></li>
                            <li> <a href="#">Office Equipment  </a></li>
                            <li class="has-submenu"> <a href="#">More category  <i class="icon-arrow-right pull-right"></i></a>
                                <ul class="submenu">
                                    <li> <a href="#">Tablet PC </a></li>
                                    <li> <a href="#">Smartwatch </a></li>
                                    <li> <a href="#">Scanner </a></li>
                                    <li> <a href="#">Software  </a></li>
                                    <li> <a href="#">Network  </a></li>
                                    <li> <a href="#">Audio/Video  </a></li>
                                    <li> <a href="#">Accessories  </a></li>
                                    <li> <a href="#">Gaming  </a></li>
                                </ul>
                            </li>
                        </ul>

                    </aside> <!-- col.// -->
                    <div class="col-md-6">

                        <!-- ================= main slide ================= -->
                        <div id="carousel1_indicator" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li data-target="#carousel1_indicator" data-slide-to="0" class="active"></li>
                                <li data-target="#carousel1_indicator" data-slide-to="1" class=""></li>
                                <li data-target="#carousel1_indicator" data-slide-to="2" class=""></li>
                            </ol>
                            <div class="carousel-inner">
                                <div class="carousel-item carousel-item-next carousel-item-left">
                                    <img class="d-block w-100" src="user/images/banners/slide1.jpg" alt="First slide">
                                </div>
                                <div class="carousel-item">
                                    <img class="d-block w-100" src="user/images/banners/slide2.jpg" alt="Second slide">
                                </div>
                                <div class="carousel-item active carousel-item-left">
                                    <img class="d-block w-100" src="user/images/banners/slide3.jpg" alt="Third slide">
                                </div>
                            </div>
                            <a class="carousel-control-prev" href="#carousel1_indicator" role="button" data-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                            </a>
                            <a class="carousel-control-next" href="#carousel1_indicator" role="button" data-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                            </a>
                        </div>
                        <!-- ============== main slidesow .end // ============= -->

                    </div> <!-- col.// -->
                    <aside class="col-md-3">

                        <div id="code_card_list">
                            <div class="card">
                                <img class="card-img-top" src="user/images/posts/2.jpg" alt="Card image cap">

                                <ul class="list-group list-group-flush">
                                    <li class="list-group-item">Featured Products</li>
                                    <li class="list-group-item">New Arrival</li>
                                    <li class="list-group-item">Hot Deals</li>
                                    <li class="list-group-item">Offer</li>
                                </ul>
                            </div><!-- card.// -->
                        </div> <!-- code wrap.// -->
                    </aside>
                </div> <!-- row.// -->
            </div> <!-- card-body .// -->
        </div> <!-- card.// -->

    </div> <!-- container .//  -->

</section>
<!-- <Product @cartadded="cartadded"></Product> -->
<!-- for product -->
<!-- ========================= SECTION CONTENT ========================= -->
<section class="section-content padding-y-sm bg">
    <div class="container">
        <header class="section-heading heading-line">
            <h4 class="title-section bg text-uppercase">New Arival</h4>
        </header>

        <div id="code_prod2">
            <div class="row">
                <div class="col-md-3" v-for="(item,key) in lists.data" :key="key">
                    <figure class="card card-product">
                        <div class="img-wrap">
                            <img :src="'/images/'+ item.images">
                            <p class="btn-overlay" ><i class="fa fa-search-plus" @click="openShow"></i> Quick view</p>
                        </div>
                        <figcaption class="info-wrap">
                            <a href="#" class="title">{{ item.name }}</a>
                            <div class="action-wrap">
                                <a class="btn btn-warning btn-sm float-right" @click="addtocart(item)"> <i class="fa fa-shopping-cart"></i>  Add To Cart </a>
                                <div class="price-wrap h5">
                                    <span class="price-new">${{ item.price }}</span>
                                </div> <!-- price-wrap.// -->
                            </div> <!-- action-wrap -->
                        </figcaption>
                    </figure> <!-- card // -->
                </div> <!-- col // -->
            </div> <!-- row.// -->
        </div>

        <div class="row">
            <div class="col-md-12 center">
                <pagination :data="lists" @pagination-change-page="getResults"></pagination>
            </div>
        </div>

    </div>

</section>
<!-- ========================= SECTION CONTENT END// ========================= -->








<!-- Large modal -->
<!-- <a data-toggle="modal" data-target=".bd-example-modal-lg">Large modal</a> -->

<div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">

        <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel2">Invoice</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
          </button>
      </div>

          <section class="content">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6">
                        <h1>Invoice</h1>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="/">Home</a></li>
                        </ol>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <div class="callout callout-info">
                            <h5><i class="fas fa-info"></i> Note:</h5>
                            This is your invoice.
                        </div>


                        <!-- Main content -->
                        <div class="invoice p-3 mb-3">
                            <!-- title row -->
                            <div class="row">
                                <div class="col-12">
                                    <h4>
                                        <i class="fas fa-globe"></i> Product Sale, Inc.
                                        <small class="float-right">Date: 12-1-2019</small>
                                    </h4>
                                </div>
                                <!-- /.col -->
                            </div>
                            <!-- info row -->
                            <div class="row invoice-info">
                                <div class="col-sm-4 invoice-col">
                                    From
                                    <address>
                                        <strong>Admin, Inc.</strong><br>
                                        795 Folsom Ave, Suite 600<br>
                                        San Francisco, CA 94107<br>
                                        Phone: (804) 123-5432<br>
                                        Email: info@almasaeedstudio.com
                                    </address>
                                </div>
                                <!-- /.col -->
                                <div class="col-sm-4 invoice-col">
                                    To
                                    <address>
                                        <strong>Hafijur Rahman</strong><br>
                                        Ashulia, Dhaka<br>
                                        Email: hafijur@gmail.com
                                    </address>
                                </div>
                                <!-- /.col -->
                                <div class="col-sm-4 invoice-col">
                                    <b>Invoice: 238498765</b><br>
                                    <b>Payment Due:</b> 12-1-2019<br>
                                    <b>Account:</b> $400
                                </div>
                                <!-- /.col -->
                            </div>
                            <!-- /.row -->

                            <!-- Table row -->
                            <div class="row">
                                <div class="col-12 table-responsive">
                                    <table class="table table-striped">
                                        <thead>
                                            <tr>
                                                <th>No</th>
                                                <th>Product</th>
                                                <th>Model</th>
                                                <th>Brand</th>
                                                <th>Quantity #</th>
                                                <th>Subtotal</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr >
                                                <td></td>
                                                <td></td>
                                                <td>model name</td>
                                                <td>brand Name</td>
                                                <td>1</td>
                                                <td>500</td>
                                            </tr>

                                        </tbody>
                                    </table>
                                </div>
                                <!-- /.col -->
                            </div>
                            <!-- /.row -->

                            <div class="row">
                                <!-- accepted payments column -->
                                <div class="col-6">
                                    <p class="lead">Payment Methods:</p>

                                    <p class="text-muted well well-sm no-shadow" style="margin-top: 10px;">
                                        Cash On Delivery.
                                    </p>
                                </div>
                                <!-- /.col -->
                                <div class="col-6">
                                    <p class="lead">Amount Due 12-01-2019</p>

                                    <div class="table-responsive">
                                        <table class="table">
                                            <tr>
                                                <th style="width:50%">Subtotal:</th>
                                                <td>$500</td>
                                            </tr>
                                            <tr>
                                                <th>Shipping:</th>
                                                <td>$10</td>
                                            </tr>
                                            <tr>
                                                <th>Total:</th>
                                                <td>$600</td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                                <!-- /.col -->
                            </div>
                            <!-- /.row -->

                        </div>
                        <!-- /.invoice -->
                    </div><!-- /.col -->
                </div><!-- /.row -->
            </div><!-- /.container-fluid -->
        </section>
    </div>
</div>
</div>


<div class="modal fade" id="cart" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Cart Page</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
      </button>
        </div>
  <div class="modal-body">
      <section style="min-height: 600px;" class="section-content bg padding-y-sm">

        <div class="container">
            <div class="row">
                <main class="col-sm-8">

                    <div class="card">
                        <table class="table table-hover shopping-cart-wrap">
                            <thead class="text-muted">
                                <tr>
                                    <th scope="col">Product</th>
                                    <th scope="col" width="120">Quantity</th>
                                    <th scope="col" width="120">Price</th>
                                    <th scope="col" class="text-right" width="200">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr v-for="(cart,n) in carts" v-bind:key="cart.id">
                                        
                                    <td>{{cart.name}}</td>
                                    <td>
                                        <form class="" action="">
                                            <input class="form-control" type="number" :value="1">
                                        </form>
                                    </td>
                                    <td>
                                        <div class="price-wrap">
                                            <var class="price">USD {{cart.price}}</var>
                                        </div> <!-- price-wrap .// -->
                                    </td>
                                    <td class="text-right">
                                            <button class="btn btn-outline-danger float-right" @click="removeCart(n)"> × </button>


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
                            <dd class="text-right">$ {{totalprice}}</dd>
                        </dl>
                        <dl class="dlist-align">
                            <dt>Shipping:</dt>
                            <dd class="text-right">$ 10</dd>
                        </dl>
                        <dl class="dlist-align h4">
                            <dt>Total:</dt>
                            <dd class="text-right"><strong>USD {{ totalprice +10 }}</strong></dd>
                        </dl>

                    </div>


                    <center>

                        <router-link to="/checkout" class="btn btn-success btn-block btn-lg"> Place your order</router-link>
                        <a href="" class="btn btn-info btn-block btn-lg"> Continue Shopping</a>
                    </center>
                </aside> <!-- col.// -->
            </div>

        </div> <!-- container .//  --><br><br>
    </section>
</div>
</div>
</div>
</div>

</section>




</template>

<script>
// let Product = require('./Product.vue').default;
// let Master = require('./Master.vue').default;
export default {
    name:"Home",
    // components:{Product},
    data(){
        return{
            email:'',
            password:'',
            showActive: '',
            lists:{},
            errors:{},
            carts:[],
            cartadd:{
                id:'',
                name:'',
                price:'',
                amount:''
            },
            badge:'',
            quantity:'1',
            totalprice:'0',
        }
    },
    created(){
     axios.get('/api/products').then(({data})=>{this.lists = data}),
     this.viewCart();
 },

 methods:{
    login(){
        let data = {
            client_id : 2,
            client_secret:'szNVQI5S5XOqsqZANwE2K9Wn0qn4FZUrvJjzb3Tg',
            grant_type: 'password',
            username:this.email,
            password:this.password
        }

        axios.post('/oauth/token',data).then(response =>{
            this.$auth.setToken(response.data.access_token,response.data.expires_in + Date.now())
            Swal.fire(
                'success',
                'You are Successfully login.',
                'success'
                )
        });
    },

    getResults(page = 1) {
        axios.get('/api/products?page=' + page)
        .then(response => {
            this.lists = response.data;
        });
    },
    openShow(){
        this.showActive = 'is-active';
    },
    viewCart(){
        if(localStorage.getItem('carts')){
            this.carts =JSON.parse(localStorage.getItem('carts'));
            this.badge = this.carts.length;
            this.totalprice = this.carts.reduce((total,cart) => {
                return total + this.quantity * cart.price;
            },0);
        }
    },

    storeCart(){
        let parsed = JSON.stringify(this.carts);
        localStorage.setItem('carts',parsed);
        this.viewCart();
    },
    removeCart(){
        this.carts.splice(cart,1);
        this.storeCart();
        Toast.fire({
            type: 'success',
            title: 'Product Removed from card'
        })
    },

    addtocart(item){
                // console.log(item, 'sadsds')
                
                this.cartadd.id = item.id;
                this.cartadd.name = item.name;
                this.cartadd.price = item.price;
                this.cartadd.amount = item.amount;

                this.carts.push(item);
                this.storeCart();
                Toast.fire({
                type: 'success',
                title: 'Product Added in Cart'
                })

                // this.$emit('cartadded',  this.cart);
            }
        }
    }
    
    </script>
    <style scoped>
    .modal-lg {
        max-width: 70% !important;
    }
    </style>