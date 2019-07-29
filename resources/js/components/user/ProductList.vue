<template>
    <section>
        <Master></Master>
        <!-- ========================= SECTION MAIN ========================= -->
    <section  class="section-content bg padding-y-sm">
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
                <aside class="col-sm-3">

                    <div class="card card-filter">
                        <article class="card-group-item">
                            <header class="card-header">
                                <a class="" aria-expanded="true" href="#" data-toggle="collapse" data-target="#collapse22">
                                    <i class="icon-action fa fa-chevron-down"></i>
                                    <h6 class="title">By Category</h6>
                                </a>
                            </header>
                            <div style="" class="filter-content collapse show" id="collapse22">
                                <div class="card-body">
                                    <form class="pb-3">
                                        <div class="input-group">
                                            <input class="form-control" placeholder="Search" type="text">
                                            <div class="input-group-append">
                                                <button class="btn btn-primary" type="button"><i class="fa fa-search"></i></button>
                                            </div>
                                        </div>
                                    </form>

                                    <ul class="list-unstyled list-lg">
                                        <li><a href="#">Cras justo odio <span class="float-right badge badge-light round">142</span> </a></li>
                                        <li><a href="#">Dapibus ac facilisis  <span class="float-right badge badge-light round">3</span>  </a></li>
                                        <li><a href="#">Morbi leo risus <span class="float-right badge badge-light round">32</span>  </a></li>
                                        <li><a href="#">Another item <span class="float-right badge badge-light round">12</span>  </a></li>
                                    </ul>
                                </div> <!-- card-body.// -->
                            </div> <!-- collapse .// -->
                        </article> <!-- card-group-item.// -->
                        <article class="card-group-item">
                            <header class="card-header">
                                <a href="#" data-toggle="collapse" data-target="#collapse33">
                                    <i class="icon-action fa fa-chevron-down"></i>
                                    <h6 class="title">By Price  </h6>
                                </a>
                            </header>
                            <div class="filter-content collapse show" id="collapse33">
                                <div class="card-body">
                                    <input type="range" class="custom-range" min="0" max="100" name="">
                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label>Min</label>
                                            <input class="form-control" placeholder="$0" type="number">
                                        </div>
                                        <div class="form-group text-right col-md-6">
                                            <label>Max</label>
                                            <input class="form-control" placeholder="$1,0000" type="number">
                                        </div>
                                    </div> <!-- form-row.// -->
                                    <button class="btn btn-block btn-outline-primary">Apply</button>
                                </div> <!-- card-body.// -->
                            </div> <!-- collapse .// -->
                        </article> <!-- card-group-item.// -->
                        <article class="card-group-item">
                            <header class="card-header">
                                <a href="#" data-toggle="collapse" data-target="#collapse44">
                                    <i class="icon-action fa fa-chevron-down"></i>
                                    <h6 class="title">By Feature </h6>
                                </a>
                            </header>
                            <div class="filter-content collapse show" id="collapse44">
                                <div class="card-body">
                                    <form>
                                        <label class="form-check">
                                            <input class="form-check-input" value="" type="checkbox">
                                            <span class="form-check-label">
                    <span class="float-right badge badge-light round">5</span>
                    Samsung
                  </span>
                                        </label>  <!-- form-check.// -->
                                        <label class="form-check">
                                            <input class="form-check-input" value="" type="checkbox">
                                            <span class="form-check-label">
                    <span class="float-right badge badge-light round">13</span>
                    Mersedes Benz
                  </span>
                                        </label> <!-- form-check.// -->
                                        <label class="form-check">
                                            <input class="form-check-input" value="" type="checkbox">
                                            <span class="form-check-label">
                    <span class="float-right badge badge-light round">12</span>
                    Nissan Altima
                  </span>
                                        </label>  <!-- form-check.// -->
                                        <label class="form-check">
                                            <input class="form-check-input" value="" type="checkbox">
                                            <span class="form-check-label">
                    <span class="float-right badge badge-light round">32</span>
                    Another Brand
                  </span>
                                        </label>  <!-- form-check.// -->
                                    </form>
                                </div> <!-- card-body.// -->
                            </div> <!-- collapse .// -->
                        </article> <!-- card-group-item.// -->
                    </div> <!-- card.// -->


                </aside> <!-- col.// -->
                <main class="col-sm-9">
                    <div id="code_prod2">
                        <div class="row">
                            <div class="col-md-4" v-for="item,key in lists.data">
                                <figure class="card card-product">
                                    <div class="img-wrap">
                                        <img :src="'/images/'+item.images">
                                        <a class="btn-overlay" href="#"><i class="fa fa-search-plus"></i> Quick view</a>
                                    </div>
                                    <figcaption class="info-wrap">
                                        <a href="#" class="title">{{ item.name }}</a>
                                        <div class="action-wrap">
                                            <a href="#" class="btn btn-warning btn-sm float-right"> <i class="fa fa-shopping-cart"></i>  Add To Cart </a>
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
                        <div class="col-md-12">
                            <pagination :data="lists" @pagination-change-page="getResults"></pagination>
                        </div>
                    </div>

                </main> <!-- col.// -->
                
            </div>
            

        </div> <!-- container .//  -->
    </section>
    <!-- ========================= SECTION CONTENT END// ========================= -->
    </section>
</template>

<script>
    let Master = require('./Master.vue').default;
    export default {
        name: "ProductList",
        components:{Master}
        ,
        data(){
            return{
                lists:{},
                errors:{}
            }
        },
        created(){
             axios.get('/api/products').then(({data})=>{this.lists = data})
        },
        methods:{
            getResults(page = 1) {
                axios.get('/api/products?page=' + page)
                .then(response => {
                    this.lists = response.data;
                });
            },
        }
    }
</script>

<style scoped>

</style>