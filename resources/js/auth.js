export default function(Vue){
	Vue.auth = {
		//set token
		setToken(token,expiration){
			localStorage.setItem('token',token)
			localStorage.setItem('expiration',expiration)
		},

		//get token
		getToken(){
			var token = localStorage.getItem('token')
			var expiration = localStorage.getItem('expiration')
			if (!token || !expiration)
				return null
			if (Date.now() > parseInt(expiration)) {
				this.destroyToken()
				return null
			}
			else
				return token

		},

		//destroy token
		destroyToken(){
			localStorage.removeItem('token')
			localStorage.removeItem('expiration')
		},

		//isAuthenticated
		isAuthenticated(){
			if(this.getToken())
				return true
			else
				return false	
		}
	}
	Object.defineProperties(Vue.prototype,{
		$auth:{
			get:() =>{
				return Vue.auth
			}
		}
	})

}