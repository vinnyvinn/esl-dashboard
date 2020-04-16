import Token from "./Token";
import  AppStorage from "./AppStorage";
class User {
    login(data){
        axios.post('login',data)
            .then(res => {
               this.responseAfterLogin(res,data);
            })
          .catch(error =>Exception.handle(error))
    }
    responseAfterLogin(res,data){
        const access_token = res.data.access_token;
        const username = res.data.user;
        const email = res.data.email;
        if(Token.isValid(access_token)){
            AppStorage.store(username,email,access_token);
        }
        axios.post('sign-in',data)
            .then(res => {
              window.location.href = '/dashboard';
            })
            .catch(error =>Exception.handle(error))
    }
    hasToken(){
        const storedToken = AppStorage.getToken();
        if(storedToken){
           return Token.isValid(storedToken) ? true : this.logout();
        }
        return false;
    }
    loggedIn(){
        return this.hasToken();
    }
    logout(){
        AppStorage.clear();
         window.location ='/login';
    }
    name(){
        if(this.loggedIn()){
            return AppStorage.getUser();
        }
    }
    id(){
        if(this.loggedIn()){
            const payload = Token.payload(AppStorage.getToken());
            return payload.sub;
        }
    }
    own(id){
        return this.id() == id;
    }
}

export default User = new User();
