<template>
    <!-- left column -->
    <div class="col-md-12">
        <!-- general form elements -->
        <div class="card card-primary">
            <div class="card-header">
                <h3 class="card-title">Create Product</h3>
            </div>
            <!-- /.card-header -->
            <div class="card-body">
                <div class="row">
                    <div class=" col-md 6">
                        <div class="form-group">
                            <label>Name</label>
                            <input type="text" name="name" class="form-control" placeholder="Enter product name" v-model="list.name">
                        </div>
                        <div class="form-group">
                            <label>Model</label>
                            <input type="text" name="model" class="form-control" placeholder="Enter model" v-model="list.model">
                        </div>
                        <div class="form-group">
                            <label>Color</label>
                            <input type="text" name="color" class="form-control" placeholder="Enter color" v-model="list.color">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Brand</label>
                            <input type="text" name="brand" class="form-control" placeholder="Enter brand" v-model="list.brand">
                        </div>
                        <div class="form-group">
                            <label>Price</label>
                            <input type="number" class="form-control" placeholder="Enter Price" v-model="list.price">
                        </div>
                        <div class="form-group">
                            <label>Stock</label>
                            <input type="number" class="form-control" placeholder="Enter stock" v-model="list.stock">
                        </div>
                    </div>
                </div>

            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="mb-3">
                        <label>Short Description</label>
                        <textarea v-model="list.description" class="textarea" placeholder="Place some text here"
                                  style="width: 100%; height: 200px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;">

                                        </textarea>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="mb-3">
                        <label>Long Description</label>
                        <textarea v-model="list.details" class="textarea" placeholder="Place some text here"
                                  style="width: 100%; height: 200px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;">

                            </textarea>
                    </div>
                </div>
            </div>
            <div class="card-footer">
                <button class="btn btn-primary float-right" @click='save'>Create</button>
            </div>
        </div>

    </div>
    <!--/.col (left) -->
</template>

<script>
    export default {
        name: "Create",
        data(){
            return{

                list:{
                    name:       '',
                    model:      '',
                    color:      '',
                    brand:      '',
                    price:      '',
                    stock:      '',
                    description:'',
                    details:    ''

                },
                errors:{}
            }
        },
        methods:{
            save(){
                axios.post('/admin/product',this.$data.list).then((response) => console.log(response))
                .catch((error) => this.errors = error.response.data.errors)


            }
        }
    }
</script>

<style scoped>

</style>