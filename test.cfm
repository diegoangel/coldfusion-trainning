<html>
<head>
	<title></title>
</head>
<body>
<cfset testComponent = createObject('component', 'TestComponent').init() />

<cfset diegoComponent = createObject('component', 'diego').init() />

<cfoutput>Return: #diegoComponent.testInterface(testComponent)#</cfoutput>
</body>
</html>