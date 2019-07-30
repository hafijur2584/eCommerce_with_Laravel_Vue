<template>
    
    <section>
        <div style="margin-bottom:10%;" class="container">
            <div class="row">
                <aside style="margin-top:15%;" class="offset-sm-3 col-sm-6">

                        <div id="code_register_1">
                            <div class="card">
                                <header class="card-header">
                                    <a href="/" class="float-right btn btn-outline-primary mt-1">Home </a>
                                    <h4 class="card-title mt-2">Sign In</h4>
                                </header>
                                <article class="card-body">
                                    <form action="" method="post">
                                        <div class="form-group">
                                            <label>Email</label>
                                            <input v-model="email" id="email" name="email" value="" type="email" class="form-control">
                                            
                                        </div> <!-- form-group end.// -->
                                        <div class="form-group">
                                            <label>Password</label>
                                            <input v-model="password" class="form-control" type="password" name="password" id="password" >
                                            
                                        </div> <!-- form-group end.// -->
                                        <div class="form-group">
                                            <button @click.prevent="login" class="btn btn-primary btn-block"> Login</button>
                                        </div> <!-- form-group// -->
                                        <small class="text-muted">By clicking the 'Sign Up' button, you confirm that you
                                            accept our <br> Terms of use and Privacy Policy.
                                        </small>
                                    </form>
                                </article>
                            </div> <!-- card.// -->

                        </div> <!-- code-wrap.// -->
                    </aside>
            </div>
        </div>
    </section>

</template>

<script>
    
    export default {
        name:"Login",
        data(){
            return{
                email:'',
                password:'',
            }
        },
        methods:{
            login(){
                console.log('yes from login page')
                let data = {
                    client_id : 2,
                    client_secret:'szNVQI5S5XOqsqZANwE2K9Wn0qn4FZUrvJjzb3Tg',
                    grant_type: 'password',
                    username:this.email,
                    password:this.password


                }
                axios.post('/oauth/token',data).then(response =>{
                    this.$auth.setToken(response.data.access_token,response.data.expires_in + Date.now())
                });
            }
        },
        mounted(){
          if( localStorage.getItem('token')){
              this.$router.push('/')
          }
        }
        
    }
</script>