/**
*
* @file  /C/Users/796470/Development/projects/CFTest/UserModel.cfc
* @author  
* @description
*
*/

component output="false" displayname="UserModel"  {

	property type="numeric" name="id";

	property type="string" name="username";

	property type="string" name="email"

	public function init(){
		return this;
	}

	public string function getUsername() {
		
		return this.userName;
	}


	public void function setUsername(required string username) {
		
		this.userName = username;
	}
	

	public boolean function store() {
		
		return;
	}


	public any function create() {
		
		return;
	}
	
	
	public any function update(param) {
		
		var sql = '';
		return;
	}
	
	
	public any function delete(param) {
		
		return;
	}
	
	
	public struct function findUserById(required numeric id) {
		
		return;
	}
	
	
	
	
	
}