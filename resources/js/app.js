

require('./bootstrap');

window.Vue = require('vue');

import VueRouter from 'vue-router'

Vue.use(VueRouter)

const routes = [
  { path: '/admin/home', component: require('./components/admin/Dashboard.vue').default },
  { path: '/admin/profile', component: require('./components/admin/Profile.vue').default },
  { path: '/', component: require('./components/user/Home.vue').default },
  { path: '/invoice', component: require('./components/user/Invoice.vue').default },
  { path: '/cart', component: require('./components/user/Cart.vue').default },
  { path: '/checkout', component: require('./components/user/Checkout.vue').default },
  { path: '/product', component: require('./components/user/ProductList.vue').default },
  { path: '/singleProduct', component: require('./components/user/SinglePage.vue').default },
]
// let Footer = require('./components/user/Footer.vue').default;
const router = new VueRouter({
  mode:'history',
  routes // short for `routes: routes`
})



// const files = require.context('./', true, /\.vue$/i);
// files.keys().map(key => Vue.component(key.split('/').pop().split('.')[0], files(key).default));

Vue.component('example-component', require('./components/ExampleComponent.vue').default);



const app = new Vue({
    el: '#app',
    router,
});
