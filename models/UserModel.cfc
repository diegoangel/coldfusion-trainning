/**
*
* @file  /C/Users/796470/Development/projects/CFTest/UserModel.cfc
* @author 
* @description User model
* @package user.models
*/

component output="false" displayname="UserModel"  {

	property type="any" name="datasource";

	property type="numeric" name="id";

	property type="string" name="username";

	property type="string" name="email"

	public function init(){

		this.datasource = 'cf_test';

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

		try {
			var sql = 'SELECT * FROM users WHERE id = ';

			userQuery = new Query();

			userQuery.setDataSource(this.datasource);

			userQuery.setSQL(sql);

			user = userQuery.Execute().getResult();

			return user;		
		}
		catch(any e) {
			writeDump(e);
		}
	}
	
	
}