<template>
  <div class="container">
    <div class="row">
      <div class="col-md-12 mt-4">
        <!-- Widget: user widget style 1 -->
        <div class="card card-widget widget-user">
          <!-- Add the bg color to the header using any of the bg-* classes -->
          <div class="widget-user-header text-white" style="background: url(./user/images/avatars/photo1.png) center center;">
            <h3 class="widget-user-username">{{ this.form.name }}</h3>
            <h5 class="widget-user-desc">{{ this.form.email }}</h5>
          </div>
          <div class="widget-user-image">
            <img class="img-circle" :src="showPhoto()" alt="User Avatar">
          </div>
          <div class="card-footer">
            <div class="row">
              <div class="col-sm-4 border-right">
                <div class="description-block">
                  <h5 class="description-header">Address</h5>
                  <span class="description-text">{{ this.form.address }}</span>
                </div>
                <!-- /.description-block -->
              </div>
              <!-- /.col -->
              <div class="col-sm-4 border-right">
                <div class="description-block">
                  <h5 class="description-header">Mobile</h5>
                  <span class="description-text">{{ this.form.phone_no }}</span>
                </div>
                <!-- /.description-block -->
              </div>
              <!-- /.col -->
              <div class="col-sm-4">
                <div class="description-block">
                  <h5 class="description-header">Cart</h5>
                  <span class="description-text">3</span>
                </div>
                <!-- /.description-block -->
              </div>
              <!-- /.col -->
            </div>
            <!-- /.row -->
          </div>
        </div>
        <!-- /.widget-user -->
      </div>

      <div class="col-md-12">
        <div class="card">
          <div class="card-header p-2">
            <ul class="nav nav-pills">
              <li class="nav-item"><a class="nav-link active" href="#settings" data-toggle="tab">Settings</a></li>
              <li class="nav-item"><a class="nav-link" href="#activity" data-toggle="tab">Activity</a></li>
            </ul>
          </div><!-- /.card-header -->
          <div class="card-body">
            <div class="tab-content">
              <!-- /.tab-pane -->

              <div class="tab-pane active" id="settings">
                <form class="form-horizontal">
                  <div class="form-group">
                    <label for="inputName" class="col-sm-2 control-label">Name</label>

                    <div class="col-sm-10">
                      <input v-model="form.name" type="text" class="form-control" :class="{ 'is-invalid': form.errors.has('name') }" id="inputName" placeholder="Name">
                      <has-error :form="form" field="name"></has-error>
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="inputUsername" class="col-sm-2 control-label">User Name</label>

                    <div class="col-sm-10">
                      <input v-model="form.username" type="text" class="form-control" :class="{ 'is-invalid': form.errors.has('username') }" id="inputUsername" placeholder="Username">
                      <has-error :form="form" field="username"></has-error>
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="inputPhone_no" class="col-sm-2 control-label">Phone Number</label>

                    <div class="col-sm-10">
                      <input v-model="form.phone_no" type="text" class="form-control" :class="{ 'is-invalid': form.errors.has('phone_no') }" id="inputPhone_no" placeholder="Phone">
                      <has-error :form="form" field="phone_no"></has-error>
                    </div>
                  </div>

                  <div class="form-group">
                    <label for="inputEmail" class="col-sm-2 control-label">Email</label>

                    <div class="col-sm-10">
                      <input v-model="form.email" type="email" class="form-control" :class="{ 'is-invalid': form.errors.has('email') }" id="inputEmail" placeholder="Email">
                      <has-error :form="form" field="email"></has-error>
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="inputAddress" class="col-sm-2 control-label">Address</label>

                    <div class="col-sm-10">
                      <input v-model="form.address" type="text" class="form-control" :class="{ 'is-invalid': form.errors.has('address') }" id="inputAddress" placeholder="Address">
                      <has-error :form="form" field="address"></has-error>
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="inputPhoto" class="col-sm-2 control-label">Photo</label>

                    <div class="col-sm-10">
                      <input name="photo" type="file" @change = "updateProfile" class="form-control" id="inputPhoto">
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="inputPassword" class="col-sm-2 control-label">Password (Leave empty.If can't Change)</label>

                    <div class="col-sm-10">
                      <input name="password" v-model="form.password" type="Password" class="form-control" :class="{ 'is-invalid': form.errors.has('password') }" id="inputPassword" placeholder="Password">
                      <has-error :form="form" field="password"></has-error>
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                      <button @click.prevent="updateInfo" type="submit" class="btn btn-success">Update</button>
                    </div>
                  </div>
                </form>
              </div>
              <div class="tab-pane" id="activity">
                <p>activity</p>

                <!-- /.post -->
              </div>


              
              <!-- /.tab-pane -->
            </div>
            <!-- /.tab-content -->
          </div><!-- /.card-body -->
        </div>
        <!-- /.nav-tabs-custom -->
      </div>

    </div>
  </div>
</template>

<script>
export default {
  name: "Profile",
  data(){
    return{

      form: new Form({
        id :'',
        name:'',
        username:'',
        phone_no:'',
        email:'',
        address:'',
        photo:'',
        password:''
      })
    }
  },
  mounted(){
    console.log('Component mounted');
  },
  methods:{
    showPhoto(){
      let photo = (this.form.photo.length >200) ?this.form.photo : "/images/"+this.form.photo ;
      return photo;
    },
    updateInfo(){
      this.$Progress.start();
      this.form.put('api/profile').then(() => {
        Fire.$emit('AfterCreate');
        Toast.fire({
          type: 'success',
          title: 'Profile updated successfully'
        })

      }).catch(() => {
        this.$Progress.fail();
      });
    },
    updateProfile(e){
      let file = e.target.files[0];
      let reader = new FileReader();
      if (file['size'] < 2111775) {
        reader.onloadend = (file) => {
          this.form.photo = reader.result;
        }
        reader.readAsDataURL(file);
      }else{
        Swal.fire({
          type:'error',
          title:'Oops...',
          text:'File must be under 2mb.',
        })

      }
    }

  },
  created(){
    axios.get("api/profile").then(({data}) => (this.form.fill(data)));
  }
}
</script>

<style scoped>

</style>