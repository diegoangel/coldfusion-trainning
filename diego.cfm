<html>
<head>
	<title>Diego test</title>
</head>
<body>
	<div class="jumbotron">
	    <h1>Hello, world!</h1>
	    <p>Contents ...</p>
	    <p>
	    	<a class="btn btn-primary btn-large">Learn more</a>
	    </p>
	</div>
	<cfset diego = createObject("component", "diego")/>
	<cfdump var="#diego#"/>
	<cfset diego.username = 'popo'/>
	<cfscript>
		diego.setGlobalVar();
		diego.setUsername('pipi');
		session.comela = 'toda';	
	</cfscript>
	<cfoutput>
		#diego.getGlobalVar()#
		#diego.getUsername()#
		#diego.getRandomNumber()#
		#diego.getSomethingFromJava()#
		#session.comela#
	</cfoutput>
	<cfdump var="#diego.doQuery()#"/>
	<cfset myStruct = {
			users = {
				nombre = 'Juan',
				nombre = 'Pepe',
				nombre = 'Maradona'
			},
			admins = {
				username = 'Neo',
				username = 'Morpheus',
				username = 'Trinity'
			}
		}>
		<cfoutput>
			JSON: #SerializeJson(myStruct)#
		</cfoutput>
		<cfquery name="artist" datasource="cfartgallery">
			SELECT * FROM artists
		</cfquery>
		<cfdump var="#artist#">

	<cfinvoke component="diego" method="getRandomNumber" returnvariable="randomNumber">
	<cfoutput>#randomNumber#</cfoutput>
</body>
</html>