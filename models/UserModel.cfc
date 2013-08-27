/**
*
* @file  /C/Users/796470/Development/projects/CFTest/UserModel.cfc
* @displayname UserModel
* @hint Modelo de la entidad User
* @author 
* @description User model
* @package user.models
*/

component output="false" {

	variables.datasource = 'cf_test';

	variables.table = 'users';

	variables.id;

	variables.username;

	variables.mail;

	/**
	* Contructor del componente
	* 
	* @description
	* @hint
	* @return component
	*/ 
	public function init(struct arguments) {

		variables.datasource = (arguments.datasource == '') ? Application.getDatasource() : arguments.datasource;

		return this;
	}

	public string function getUsername() {
		
		return variables.username;
	}


	public void function setUsername(required string username) {
		
		variables.userName = username;
	}
	
	/**
	* TODO: completar metodo
	* 
	* @description
	* @hint
	* @return boolean
	*/ 
	public boolean function store(struct params) {
		

	}


	public any function create(params) {
		
		try {
			var sql = 'INSERT INTO ' & variables.table & ' () VALUES ()';
			return;		
		}
		catch(any e) {
			writeDump(e);
		} finally {
		
		}
	}
	
	
	public any function update(struct params) {
		
		try {
			sql = 'UPDATE ' & variables.VALUES & ' SET ';
			return;		
		}
		catch(any e) {
			writeDump(e);
		} finally {
		
		}
	}
	
	
	public any function delete(param) {
		
		return;
	}	
	
	
	public struct function findUserById(required numeric id) {
		try {
			var sql = 'SELECT * FROM users WHERE id = :id';

			var queryService = new Query();
			queryService.setDataSource(variables.datasource);
			queryService.setName('findUserById');
			queryService.setSQL(sql);
			queryService.addParam(name="id", value="arguments.id", cfsqltype="cf_sql_integer");
			user = queryService.Execute().getResult();

			return user;	
		}
		catch(any e) {
			rethrow;
		} finally {
			// TODO: log Exception!
		}	
	}

	public struct function findUserByUsernameAndPassword(required string username, required string password) {
		try {
			var sql = 'SELECT * FROM users WHERE username = :username AND passwd = SHA1(:password)';

			var queryService = new Query();		

			queryService.setDataSource(variables.datasource);
			queryService.dbType('query');
			queryService.setName('findUserByUsernameAndPassword');
			queryService.setSQL(sql);
			queryService.addParam(name="username", value="arguments.username", cfsqltype="cf_sql_varchar");
			queryService.addParam(name="password", value="arguments.password", cfsqltype="cf_sql_varchar");			
			var user = queryService.Execute().getResult();
			return user;	
		}
		catch(any e) {
			writeDump(e);
		} finally {
			// TODO: log Exception!
		}	
	}
	
	
	
	
}