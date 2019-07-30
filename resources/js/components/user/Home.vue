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
                                                <input v-model="email" type="email" class="form-control" placeholder="email@example.com">
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
                                    <router-link to="/cart" class="widget-header">
                                        <div class="icontext">
                                            <div class="icon-wrap"><i class="text-warning icon-sm fa fa-shopping-cart"></i></div>
                                            <div class="text-wrap text-dark mt-1">
                                                <h1 @cartadded="cartadded"></h1>
                                                Cart<br> 0
                                            </div>
                                        </div>
                                    </router-link>
                                </div> <!-- col.// -->
                                <div class="col-auto">
                                    <router-link to="/invoice" class="widget-header">
                                        <div class="icontext">
                                            <div class="text-wrap text-dark">
                                                <div class="mt-1">Invoice</div>
                                            </div>
                                        </div>
                                    </router-link>
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
        <Product @cartadded="cartadded"></Product>
    </section>




</template>

<script>
let Product = require('./Product.vue').default;
// let Master = require('./Master.vue').default;
export default {
    name:"Home",
    components:{Product},
    methods:{
        cartadded(value){
            console.log(value);
            this.$emit('cartadded',  this.cart)
        }
    }
    
}
</script>