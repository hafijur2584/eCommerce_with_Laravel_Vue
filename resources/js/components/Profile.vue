<template>
	<div>
		<div class="container">
			<button class="btn btn-secondary" v-on:click="seecart=true"> Cart-Item: {{cartarray.length}}</button>
			<div class="row justify-content-center">
				<div class="col-md-12">
					<div class="row">
						<div class="card" style="width: 18rem;" v-for="(item, i) in products" :key="i">
							<img class="card-img-top" :src="item.image" alt="Card image cap">
							  <div class="card-header">
							    {{item.title}}
							  </div>
							<div class="card-body">
								<p class="card-text">{{item.description}}</p> 
								<button class="btn btn-primary"  v-on:click="addtocart(item)">Add to Cart</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="container" v-if="seecart">
			<div class="card">
				<div class="card-body">
					<div class="table-responsive-sm">
						<table class="table table-striped">
							<thead>
								<tr>
									<th class="center">#</th>
									<th>Item</th>
									<th>Description</th>
									<th class="right">Cost</th>
								</tr>
							</thead>
							<tbody>
								<tr v-for="(cart, i) in cartarray" :key="i">
									<td class="center"></td>
									<td class="left strong">{{cart.title}}</td>
									<td class="left">{{cart.description}}</td>
									<td class="right">{{cart.price}}</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="row">
						<div class="col-lg-4 col-sm-5">
						</div>
						<div class="col-lg-4 col-sm-5 ml-auto">
							<table class="table table-clear">
								<tbody>
									<tr>
										<td class="left">
											<strong>Subtotal</strong>
										</td>
										<td class="right">$8.497,00</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</template>

<script>
    export default {
        mounted(){
            console.log('Component mounted.')
        },
        data: ()=>({
        	products: [
              {
              	'title': 'Dell SE2219HX 21.5" LED Full HD Monitor',
              	'description' : 'this is the description of the product.',
                'image': 'https://www.startech.com.bd/image/cache/catalog/monitor/dell/se2219hx/se2219hx-500x500.png',
                'price' : '9,900'
              },
              {
              	'title': 'Dell SE2219HX 21.5" LED Full HD Monitor',
              	'description' : 'this is the description of the product.',
                'image': 'https://www.startech.com.bd/image/cache/catalog/monitor/dell/se2219hx/se2219hx-500x500.png',
                'price' : '9,900'
              },

              {
              	'title': 'Dell SE2219HX 21.5" LED Full HD Monitor',
              	'description' : 'this is the description of the product.',
                'image': 'https://www.startech.com.bd/image/cache/catalog/monitor/dell/se2219hx/se2219hx-500x500.png',
                'price' : '9,900'
              },

              {
              	'title': 'Dell SE2219HX 21.5" LED Full HD Monitor',
              	'description' : 'this is the description of the product.',
                'image': 'https://www.startech.com.bd/image/cache/catalog/monitor/dell/se2219hx/se2219hx-500x500.png',
                'price' : '9,900'
              },

              {
              	'title': 'Dell SE2219HX 21.5" LED Full HD Monitor',
              	'description' : 'this is the description of the product.',
                'image': 'https://www.startech.com.bd/image/cache/catalog/monitor/dell/se2219hx/se2219hx-500x500.png',
                'price' : '9,900'
              }
        	],
        	cartarray:[],
        	seecart:false,
        	total: 0
        }),
        methods:{
        	addtocart(item){
        	 item.qutety = 1;
        	 this.total += item.price
             this.cartarray.push(item)
        	}
        }
    }
</script>