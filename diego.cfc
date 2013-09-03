/**
*
* @file  /home/diego/Public/test/cf/cftest/diego.cfc
* @author  
* @description
*
*/

component output="false" displayname="diegote"  {

	variables.username = 'pepe';

	public function init(struct arguments){

		return this;
	}


	public any function getUsername() {
		
		return variables.username;
	}
	
	
	public string function setUsername(required string username) {
		
		variables.username = arguments.username;
	}
	
	
	public any function setGlobalVar() {
		
		 globalVar = 'globalVar';
	}
	
	
	public any function getGlobalVar() {
		try {
			return globalVar;
		}
		catch(any e) {
			writeDump(e);
		} finally {
		
		}	
	}
	
	public numeric function getRandomNumber() {
		
		return rand('SHA1PRNG');
	}
	
	public any function getSomethingFromJava() {
		
		try {

		}
		catch(any e) {
			writeDump(e);
		} finally {
		
		}
	}


	public any function doQuery() {

		try {
			var myQuery = new query();
			myQuery.setDataSource('cftest');
			myQuery.setSQL("SELECT NOW()");
			var result = myQuery.Execute().getResult();
			return result;		
		}
		catch(any e) {
			writeDump(e);
		} finally {
		
		}
	}

	public string function testInterface(TestInterface testComponent) {
		return arguments.testComponent.doSomething();
	}
	
		
	
}