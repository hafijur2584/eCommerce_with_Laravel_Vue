<template>
    <section>
        <Master></Master>
        <!-- ========================= SECTION MAIN ========================= -->
        <section class="section-content bg padding-y-sm">
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
                    <div class="col-xl-10 col-md-9 col-sm-12">


                        <main class="card">
                            <div class="row no-gutters">
                                <aside class="col-sm-6 border-right">
                                    <article class="gallery-wrap">
                                        <div class="img-big-wrap">
                                            <div> <a href="user/images/items/4.jpg" data-fancybox=""><img src="user/images/items/4.jpg"></a></div>
                                        </div> <!-- slider-product.// -->
                                        <div class="img-small-wrap">
                                            <div class="item-gallery"> <img src="user/images/items/4.jpg"></div>
                                        </div> <!-- slider-nav.// -->
                                    </article> <!-- gallery-wrap .end// -->
                                </aside>
                                <aside class="col-sm-6">
                                    <article class="card-body">
                                        <!-- short-info-wrap -->
                                        <h3 class="title mb-3">Name</h3>

                                        <div class="mb-3">
                                            <var class="price h3 text-warning">
                                                <span class="currency">US $</span><span class="num">44</span>
                                            </var>
                                            <span>/per unit</span>
                                        </div> <!-- price-detail-wrap .// -->
                                        <dl>
                                            <dt>Description</dt>
                                            <dd><p>this is description. </p></dd>
                                        </dl>
                                        <dl class="row">
                                            <dt class="col-sm-3">Model#</dt>
                                            <dd class="col-sm-9"> 54455 </dd>

                                            <dt class="col-sm-3">Color</dt>
                                            <dd class="col-sm-9"> red </dd>

                                            <dt class="col-sm-3">Brand</dt>
                                            <dd class="col-sm-9"> suzuki </dd>
                                        </dl>
                                        <div class="rating-wrap">

                                            <ul class="rating-stars">
                                                <li style="width:80%" class="stars-active">
                                                    <i class="fa fa-star"></i> <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i> <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                </li>
                                                <li>
                                                    <i class="fa fa-star"></i> <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i> <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                </li>
                                            </ul>
                                            <div class="label-rating">132 reviews</div>
                                        </div> <!-- rating-wrap.// -->
                                        <hr>
                                        <form class="form-inline" action="" method="post">

                                            <div class="row">

                                                <input name="product_id" type="hidden" value="">
                                                <div class="col-sm-5">
                                                    <dl class="dlist-inline">
                                                        <dt>Quantity: </dt>
                                                        <dd>
                                                            <select name="product_quantity" class="form-control form-control-sm" style="width:70px;">
                                                                <option value="1"> 1 </option>
                                                                <option value="2"> 2 </option>
                                                                <option value="3"> 3 </option>
                                                                <option value="4"> 4 </option>
                                                                <option value="5"> 5 </option>
                                                            </select>
                                                        </dd>
                                                    </dl>  <!-- item-property .// -->
                                                </div> <!-- col.// -->
                                                <div class="col-sm-7">
                                                    <dl class="dlist-inline">
                                                        <dt>Stock: </dt>
                                                        55
                                                    </dl>  <!-- item-property .// -->
                                                </div> <!-- col.// -->
                                            </div> <!-- row.// -->
                                            <hr>

                                            <button type="submit" class="btn  btn-primary"><i class="fa fa-shopping-cart"></i> Add to Cart </button>
                                        </form>
                                        <!-- short-info-wrap .// -->
                                    </article> <!-- card-body.// -->
                                </aside> <!-- col.// -->
                            </div> <!-- row.// -->
                        </main> <!-- card.// -->

                        <!-- PRODUCT DETAIL -->
                        <article class="card mt-3">
                            <div class="card-body">
                                <h4>Detail overview</h4>
                                Product Description
                            </div> <!-- card-body.// -->
                        </article> <!-- card.// -->

                        <!-- PRODUCT DETAIL .// -->

                    </div> <!-- col // -->
                    <aside class="col-xl-2 col-md-3 col-sm-12">
                        <div class="card">
                            <div class="card-header">
                                You May Like
                            </div>

                            <div class="card-body row">
                                <div class="col-md-12 col-sm-3" >
                                    <figure class="item border-bottom mb-3" v-for="(item,key) in lists.data" :key="key">
                                        <a href="" class="img-wrap"> <img :src="'/images/'+item.images" class="img-md"></a>
                                        <figcaption class="info-wrap">
                                            <a href="#" class="title">{{ item.name }}</a>
                                            <div class="price-wrap mb-3">
                                                <span class="price-new">{{ item.price }}</span>
                                            </div> <!-- price-wrap.// -->
                                        </figcaption>
                                    </figure> <!-- card-product // -->
                                </div> <!-- col.// -->
                            </div> <!-- card-body.// -->
                        </div> <!-- card.// -->
                    </aside> <!-- col // -->
                </div> <!-- row.// -->



            </div><!-- container // -->
        </section>
        <!-- ========================= SECTION CONTENT END// ========================= -->
    </section>
</template>

<script>
    let Master = require('./Master.vue').default;
    export default {
        components:{Master},
        data(){
            return{
                lists:{},
            }
        },
        created() {
            axios.get('/api/mayYouLike').then((data)=>{this.lists = data})
        },
        methods:{

        }
    }
</script>
