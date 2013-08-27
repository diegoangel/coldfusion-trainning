/**
*
* @file  /C/Users/796470/Development/projects/CFTest/UserController.cfc
* @author  
* @description
*
*/

component output="false" displayname="UserController"  {

	variables.modelName = 'models.UserModel';

	public any function init(){
		return this;
	}

	public any function login(struct formData) {
		
		var post = arguments.formData;

		try {
			var userModel = createObject('component', 'models.UserModel') ;
			var user = userModel.findUserByUsernameAndPassword(post.username, post.passwd);

			if (user != '') {
				session.username = user.username;
				session.email = user.email;
			}

			return true;
			// TODO: crear dispatcher para routear urls
			// Ahora hay un cfif mugroso en index.cfm
			//location(url='/views/welcome.cfm');
		}
		catch(any e) {
			writeDump(e);
		}
	}
	
	
	public any function logout(param) {
		
		return true;
	}
	

	public any function welcome(param) {
		
		return true;
	}
		
}