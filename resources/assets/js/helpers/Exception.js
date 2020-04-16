import User from "./User";

class Exception {
    handle(error){
    this.isExpired(error.response.data.error);
    }
    isExpired(error){

        if (error == 'Token is Expired'){
            User.logout();
        }
        if (error == 'Invalid Token'){
            User.logout();
        }
        if (error=='Unauthorized'){
           eventBus.$emit('invalidCredentials');
        }

    }

}

export default Exception = new Exception();
