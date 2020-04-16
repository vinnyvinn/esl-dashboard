<template>
    <div class="row">
        <div class="col-xs-12 col-sm-8"></div>
        <div class="col-xs-12 col-sm-4">
            <div class="login-form">
                <div class="logo">
                    <img src="/img/frontend/logo.png">
                </div>
                <h4>Login to Pro-Kazi Dashboard</h4>
                <form class="form-horizontal" @submit.prevent="login()">
                    <div class="form-group">
                        <label>Email Address</label>
                        <input type="email" class="form-control" v-model="form.email" placeholder="Email Address" required>
                    </div><!--form-group-->
                    <div class="form-group">
                        <label>Password</label>
                        <input type="password" class="form-control" v-model="form.password" required placeholder="Password">
                    </div><!--form-group-->
                    <div class="form-group">
                        <div class="col-md-6">
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox">
                                    Remember me
                                </label>
                            </div>
                        </div><!--col-md-6-->
                        <div class="col-md-6 ">
                            <label>Forgot Your Password?</label>
                        </div><!--col-md-6-->
                    </div><!--form-group-->
                    <div class="form-group">
                        <div class="col-sm-12">
                            <input type="submit" class="btn btn-primary" value="Login">
                        </div>
                    </div>

                </form>

            </div>
        </div>
    </div>
</template>

<script>
    export default {
        data(){
            return {
                form:{
                    email:'',
                    password:''
                }
            }
        },
        created(){
            this.listen();
            //User.logout()
            if (User.loggedIn()){
                console.log(User.id());
                console.log(User.name());
              //  window.location.href ="/";
               // this.$router.push('/machines');
            }
        },
        methods:{
            login(){
                User.login(this.form);
            },
            listen(){
                eventBus.$on('invalidCredentials',()=>{
                    this.$toastr.w('Sorry,You entered invalid credentials.');
                });
                eventBus.$on('invalidTokens',()=>{
                    this.$toastr.w('Sorry,Your token is valid.')
                });
            }
        }
    }
</script>

<style scoped>

</style>