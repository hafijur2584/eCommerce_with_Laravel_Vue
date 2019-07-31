<template>
<div>
    <!-- ========================= SECTION CONTENT ========================= -->
    <section class="section-content padding-y-sm bg">
        <div class="container">
            <header class="section-heading heading-line">
                <h4 class="title-section bg text-uppercase">New Arival</h4>
                <h4>{{badge}}</h4>
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
    </div>
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
                if(localStorage.getItem('cart')){
                    this.cart =JSON.parse(localStorage.getItem('cart'));
                    this.badge = this.cart.length;
                    this.totalprice = this.cart.reduce((total,item) => {
                        return total + this.quantity * item.price;
                    },0);
                }
            },

            storeCart(){
                let parsed = JSON.stringify(this.cart);
                localStorage.setItem('cart',parsed);
                this.viewCart();
            },
            removeCart(){
                this.cart.splice(item,1);
                this.storeCart();
            },

            addtocart(item){
                // console.log(item, 'sadsds')
                this.cartadd.id = item.id;
                this.cartadd.name = item.name;
                this.cartadd.price = item.price;
                this.cartadd.amount = item.amount;

                this.cart.push(item);
                this.storeCart();
                this.$emit('cartadded',  this.cart);
            }
        }
    }
</script>

<style scoped>

</style>