<template>
    <div class="col-12">
        <div class="card mt-4">
            <div class="card-header">
                <h3 class="card-title">Responsive Hover Table</h3>

                <div class="card-tools">
                    <div class="input-group input-group-sm" style="width: 150px;">
                        <button class="btn btn-success" data-toggle="modal" data-target="#exampleModalCenter">Add New <i class="fas fa-user-plus"></i></button>
                    </div>
                </div>
            </div>
            <!-- /.card-header -->
            <div class="card-body table-responsive p-0">
                <table class="table table-hover">
                    <thead>
                    <tr>
                        <th>No</th>
                        <th>Name</th>
                        <th>Model</th>
                        <th>Brand</th>
                        <th>Color</th>
                        <th>Price</th>
                        <th>Stock</th>
                        <th>Action</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr v-for="product,key in products">
                        <td>{{ product.id }}</td>
                        <td>{{ product.name }}</td>
                        <td>{{ product.model }}</td>
                        <td>{{ product.brand }}</td>
                        <td>{{ product.color }}</td>
                        <td>$ {{ product.price }}</td>
                        <td>{{ product.stock }}</td>
                        <td>
                            <a style="color: green" href=""><i class="fa fa-edit"></i></a>/
                            <a style="color: red;" href=""><i class="fa fa-trash"></i></a>
                        </td>
                    </tr>

                    </tbody>
                </table>
            </div>
            <!-- /.card-body -->
        </div>
        <!-- /.card -->
        <!-- Modal -->
        <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLongTitle">Add New Product</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <form @submit.prevent="createProduct">
                        <div class="modal-body">
                            <div class="form-group">
                                <input v-model="form.name" type="text" name="name"
                                       class="form-control" :class="{ 'is-invalid': form.errors.has('name') }" placeholder="Product name">
                                <has-error :form="form" field="name"></has-error>
                            </div>
                            <div class="form-group">
                                <input v-model="form.slug" type="text" name="slug"
                                       class="form-control" :class="{ 'is-invalid': form.errors.has('slug') }" placeholder="Product slug">
                                <has-error :form="form" field="slug"></has-error>
                            </div>
                            <div class="form-group">
                                <input v-model="form.model" type="text" name="model"
                                       class="form-control" :class="{ 'is-invalid': form.errors.has('model') }" placeholder="Product model">
                                <has-error :form="form" field="model"></has-error>
                            </div>
                            <div class="form-group">
                                <input v-model="form.brand" type="text" name="brand"
                                       class="form-control" :class="{ 'is-invalid': form.errors.has('brand') }" placeholder="Product brand">
                                <has-error :form="form" field="brand"></has-error>
                            </div>
                            <div class="form-group">
                                <input v-model="form.color" type="text" name="color"
                                       class="form-control" :class="{ 'is-invalid': form.errors.has('color') }" placeholder="Product color">
                                <has-error :form="form" field="color"></has-error>
                            </div>
                            <div class="form-group">
                                <input v-model="form.price" type="number" name="price"
                                       class="form-control" :class="{ 'is-invalid': form.errors.has('price') }" placeholder="Product price">
                                <has-error :form="form" field="price"></has-error>
                            </div>
                            <div class="form-group">
                                <input v-model="form.stock" type="number" name="stock"
                                       class="form-control" :class="{ 'is-invalid': form.errors.has('stock') }" placeholder="Product stock">
                                <has-error :form="form" field="stock"></has-error>
                            </div>
                            <div class="form-group">
                            <textarea v-model="form.description" name="description"
                                      class="form-control" :class="{ 'is-invalid': form.errors.has('description') }" placeholder="Product short description"></textarea>
                                <has-error :form="form" field="description"></has-error>
                            </div>
                            <div class="form-group">
                            <textarea v-model="form.details" name="details"
                                      class="form-control" :class="{ 'is-invalid': form.errors.has('details') }" placeholder="Product long description"></textarea>
                                <has-error :form="form" field="details"></has-error>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-primary">Save changes</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

</template>

<script>
import { setInterval } from 'timers';
    export default {
        data(){
          return{
              products:{},
              form: new Form({
                  name:'',
                  slug:'',
                  model:'',
                  brand:'',
                  color:'',
                  price:'',
                  stock:'',
                  description:'',
                  details: ''
              })
          }
        },
        methods:{
            loadUsers(){
                axios.get("/admin/product").then((data) => (this.products = data.data));
            }
            ,
            createProduct(){
                this.$Progress.start();
                this.form.post('/admin/product');
                Fire.$emit('AfterCreate');
                $('#exampleModalCenter').modal('hide');
                Toast.fire({
                type: 'success',
                title: 'Product created successfully'
                })
                this.$Progress.finish();
            }
        },
        created() {
            this.loadUsers();
            Fire.$on('AfterCreate',() => {
                this.loadUsers();
            });
            // setInterval(() =>this.loadUsers(),3000);
        }
        ,
        name: "Products"
    }
</script>

<style scoped>

</style>