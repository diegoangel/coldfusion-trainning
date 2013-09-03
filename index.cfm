<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>CF test project</title>
	<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
	<!-- Optional theme -->
	<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap-theme.min.css">
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="navbar navbar-inverse navbar-fixed-top">

    </div>
    <div class="jumbotron">
		<div class="container">
		    <h1>Proyecto de prueba: cftest</h1>
		</div>
	</div>
<cfscript>
	cmp = (structKeyExists(form, cmp)) ? form.cmp : false; 
	fn = (structKeyExists(form, fn)) ? form.fn : false;
	if (cmp == UserController) {
		switch(fn) {
			case login:
				user = createObject(component, controllers.UserController);
				user.login(form);
			break;	
			default:

			break;
		}		
	}
	writeDump(session);
</cfscript>	
	<div class="container">
		<div class="row">
			<div class="col-lg-4">
			
			</div>
			<div class="col-lg-4">
				<cfif structKeyExists(session, username)>
					<cfinclude template="/views/welcome.cfm"/>
				<cfelse>
					<cfinclude template="/views/login.cfm"/>
				</cfif>		
			</div>		
			<div class="col-lg-4">
			
			</div>	
		</div>	
	</div>
</body>
</html>