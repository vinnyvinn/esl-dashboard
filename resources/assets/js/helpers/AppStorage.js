class AppStorage {
    storeToken(token){
        localStorage.setItem('token',token);
    }
    storeUser(user){
        localStorage.setItem('user',user);
    }
    storeUserEmail(email){
        localStorage.setItem('email',email);
    }
    store(user,email,token){
        this.storeToken(token);
        this.storeUser(user);
        this.storeUserEmail(email);
    }
    clear(){
        localStorage.removeItem('token');
        localStorage.removeItem('user');
        localStorage.removeItem('email');
    }
    getToken(){
        return localStorage.getItem('token');
    }
    getUser(){
        return localStorage.getItem('user');
    }
    getUserEmail(){
        return localStorage.getItem('email');
    }
}

export default AppStorage = new AppStorage();
