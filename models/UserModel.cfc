/**
*
* @file  /C/Users/796470/Development/projects/CFTest/UserModel.cfc
* @author 
* @description User model
* @package user.models
*/

component output="false" displayname="UserModel"  {

	variables.datasource;

	variables.id;

	variables.username;

	variables.mail;


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
			var sql = 'SELECT * FROM users WHERE id = :id';

			var queryService = new Query();
			queryService.setDataSource(this.datasource);
			queryService.setName('findUserById');
			queryService.setSQL(sql);
			queryService.addParam(name="id", value="arguments.id", cfsqltype="cf_sql_integer");
			user = queryService.Execute().getResult();

			return user;		
		}
		catch(any e) {
			writeDump(e);
		} finally {
			// TODO: log Exception!
		}	
	}
	
	
}