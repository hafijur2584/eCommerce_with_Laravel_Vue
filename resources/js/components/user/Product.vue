<template>
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
                                    <a href="#" class="btn btn-warning btn-sm float-right" @click="addtocart(item)"> <i class="fa fa-shopping-cart"></i>  Add To Cart </a>
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
</template>

<script>
    export default {
        name: "Product",
        data(){
            return{
                showActive: '',
                lists:{},
                errors:{},
                cart:[],

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
            openShow(){
                this.showActive = 'is-active';
            },
            addtocart(item){
                this.cart.push(item)
                
            }
        }
    }
</script>

<style scoped>

</style>