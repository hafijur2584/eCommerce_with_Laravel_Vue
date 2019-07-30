

require('./bootstrap');

window.Vue = require('vue');
import { Form, HasError, AlertError } from 'vform';

import Swal from 'sweetalert2'
window.Swal = Swal;
const Toast = Swal.mixin({
  toast: true,
  position: 'top-end',
  showConfirmButton: false,
  timer: 5000
});
window.Toast = Toast;

window.Form = Form;
Vue.component(HasError.name, HasError)
Vue.component(AlertError.name, AlertError)

Vue.component('pagination', require('laravel-vue-pagination'));

import VueRouter from 'vue-router'

import Auth from './auth.js'


Vue.use(VueRouter)
Vue.use(Auth)



import VueProgressBar from 'vue-progressbar'
Vue.use(VueProgressBar, {
  color: 'rgb(143, 255, 199)',
  failedColor: 'red',
  height: '10px'
})

const routes = [
  { path: '/admin/home', component: require('./components/admin/Dashboard.vue').default },
  { path: '/admin/profile', component: require('./components/admin/Profile.vue').default },
  { path: '/admin/Product', component: require('./components/admin/product/Products.vue').default },
  { path: '/admin/product/create', component: require('./components/admin/product/Create.vue').default },
  { path: '/home', component: require('./components/user/Master.vue').default }
]


import Login from './components/user/Login.vue';
import Home from './components/user/Home.vue';
import Invoice from './components/user/Invoice.vue';
import Cart from './components/user/Cart.vue';
import Checkout from './components/user/Checkout.vue';
import ProductList from './components/user/ProductList.vue';
import singlePage from './components/user/SinglePage.vue';
import Profile from './components/user/Profile.vue';
import Register from './components/user/Register.vue';
const router = new VueRouter({
  mode:'history',
  // routes,
  routes: [
      {
        path: "/login",
        component:Login,
        meta:{
          forVisitors:true
        }
      },
      {
        path: "/",
        component:Home
      },
      {
        path: "/invoice",
        component:Invoice
      },
      {
        path: "/cart",
        component:Cart
      },
      {
        path: "/checkout",
        component:Checkout
      },
      {
        path: "/product",
        component:ProductList
      },
      {
        path: "/singleProduct",
        component:singlePage
      },
      {
        path: "/profile",
        component:Profile
      },
      {
        path: "/register",
        component:Register,
        meta:{
          forVisitors:true
        }
      },
  ]
})
// Router.beforeEach(
//     (to,from,next) =>{
//       if (to.matched.some(record =>record.meta.forVisitors)) {
//         if (Vue.Auth.isAuthenticated()) {
//           next({
//             path: '/product'
//           })
//         }else next()
//       }else next()
//     }
//   );

window.Fire = new Vue();



Vue.component('example-component', require('./components/ExampleComponent.vue').default);



const app = new Vue({
    el: '#app',
    router,
});
