/**
*
* @file  /home/diego/Public/test/cf/cftest/TestComponent.cfc
* @author  
* @description
*
*/

component output="false" displayname="TestComponent" implements="TestInterface"  {

	public function init(){
		return this;
	}


	public any function doSomething() {
		return 'Fuck!';
	}
	
	
}