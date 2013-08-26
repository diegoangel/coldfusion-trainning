<!DOCTYPE html>
<html>
<head>
<title>Coldfusion</title>
<script src="/dist/js/jquery-1.10.2.min.js"></script>
<script src="/dist/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="/dist/css/bootstrap.css">
<script>
$(document).ready(function(){
	
  $("form button").click(function(){
    alert('Messi!')
  });
  
  $(".btn btn-danger dropdown-toggle").click(function(){
   $(this).text("EH!");
    
  })
  
  
  
});
</script>
<style>
h1,form
{
width:50%;
}

</style>
</head>

<body>
	
	
<div class="row">
  <div class="col-xs-6" style="margin-top:30px;">

	<ul class="nav nav-pills nav-stacked">
  		<li class="active"><a href="#">Home</a></li>
  		<li><a href="#">Profile</a></li>
  		<li><a href="#">Messages</a></li>
	</ul>
	

	<div class="btn-group">
  		<button type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown">
    	Ein <span class="caret"></span>
  		</button>
  		<ul class="dropdown-menu" role="menu">
    	<li><a href="#">Action</a></li>
    	<li><a href="#">Another action</a></li>
    	<li><a href="#">Something else here</a></li>
    	<li class="divider"></li>
    	<li><a href="#">Separated link</a></li>
  		</ul>
	</div>
	<div class="btn-group">
  		<button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown">
    	Zwei <span class="caret"></span>
  		</button>
  		<ul class="dropdown-menu" role="menu">
    	<li><a href="#">Action</a></li>
    	<li><a href="#">Another action</a></li>
    	<li><a href="#">Something else here</a></li>
    	<li class="divider"></li>
    	<li><a href="#">Separated link</a></li>
  		</ul>
	</div>
	<div class="btn-group">
  		<button type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown">
    	Drei <span class="caret"></span>
  		</button>
  		<ul class="dropdown-menu" role="menu">
    	<li><a href="#">Action</a></li>
    	<li><a href="#">Another action</a></li>
    	<li><a href="#">Something else here</a></li>
    	<li class="divider"></li>
    	<li><a href="#">Separated link</a></li>
  		</ul>
	</div>
	<div class="btn-group">
  		<button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown">
    	Vier <span class="caret"></span>
  		</button>
  		<ul class="dropdown-menu" role="menu">
    	<li><a href="#">Action</a></li>
    	<li><a href="#">Another action</a></li>
    	<li><a href="#">Something else here</a></li>
    	<li class="divider"></li>
    	<li><a href="#">Separated link</a></li>
  		</ul>
	</div>
	

	
  </div>
  <div class="col-xs-6">
	<h1>PHP Sucks!</h1>

	<form role="form" method="GET" action="prueba1.cfm">
 	 <div class="form-group">
    	<label for="exampleInputEmail1">Email address</label>
    	<input type="email" class="form-control" id="exampleInputEmail1" placeholder="Enter email">
  	 </div>
  	 <div class="form-group">
    	<label for="exampleInputPassword1">Password</label>
    	<input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
  	</div>
  	<div class="form-group">
    	<label for="exampleInputFile">File input</label>
    	<input type="file" id="exampleInputFile">
    	<p class="help-block">Example block-level help text here.</p>
  	</div>
  	<div class="btn-group" data-toggle="buttons">
  		<label class="btn btn-primary">
    		<input type="checkbox"> Java
  		</label>
  		<label class="btn btn-primary">
    		<input type="checkbox"> PHP
  		</label>
  		<label class="btn btn-primary">
   			<input type="checkbox"> Coldfusion
  		</label>
	</div>
  	<button type="submit" class="btn btn-default">Submit</button>
	</form>
   </div>

</div>




<!---
<cfquery datasource="test" name="mistico">
SELECT * FROM ENGINES
</cfquery>

<cfoutput query="mistico">
#mistico.engine#
</cfoutput>
--->
</body>
</html>
