<template>

    <section>
        <div style="margin-bottom:5%;" class="container">
            <div style="margin-top:15%;" class="row justify-content-center">
                <div class="col-md-8">
                    <div class="card">
                        <h4 class="card-header">Registration Page</h4>

                        <div class="card-body">
                            <form method="POST" action="">
                                <div class="form-group row">
                                    <label for="name" class="col-md-4 col-form-label text-md-right">Name</label>

                                    <div class="col-md-6">
                                        <input id="name" type="text" class="form-control" name="name" value="" required autocomplete="name" autofocus>

                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="username" class="col-md-4 col-form-label text-md-right">User Name</label>

                                    <div class="col-md-6">
                                        <input id="username" type="text" class="form-control" name="username" value="" required autocomplete="username" autofocus>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="phone_no" class="col-md-4 col-form-label text-md-right">Phone Number</label>

                                    <div class="col-md-6">
                                        <input id="phone_no" type="text" class="form-control" name="phone_no" value="" required autocomplete="phone_no" autofocus>
                                    </div>
                                </div>


                                <div class="form-group row">
                                    <label for="email" class="col-md-4 col-form-label text-md-right">Email</label>

                                    <div class="col-md-6">
                                        <input id="email" type="email" class="form-control" name="email" value="" required autocomplete="email">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="address" class="col-md-4 col-form-label text-md-right">Address</label>

                                    <div class="col-md-6">
                                        <input id="address" type="text" class="form-control" name="address" value="" required autocomplete="address" autofocus>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="password" class="col-md-4 col-form-label text-md-right">Password</label>

                                    <div class="col-md-6">
                                        <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="new-password">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="password-confirm" class="col-md-4 col-form-label text-md-right">Confirm Password</label>

                                    <div class="col-md-6">
                                        <input id="password-confirm" type="password" class="form-control" name="password_confirmation" required autocomplete="new-password">
                                    </div>
                                </div>

                                <div class="form-group row mb-0">
                                    <div class="col-md-6 offset-md-4">
                                        <button type="submit" class="btn btn-primary">
                                            Register
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

</template>

<script>

export default {
    name:"Register",

    mounted(){
          if( localStorage.getItem('token')){
              this.$router.push('/')
          }
        }

}
</script>