<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="landing"/>
		<title><g:message code="app.subscription.title"/></title>
	</head>
	<body>
<body>	
	<div class="title">
		<g:message code="app.subscription.dialog.title"/>
	</div>
	<div class="content-line1">
		<g:message code="app.subscription.dialog.content.line1"/>                        
	</div>               
	<div class="register">
		<g:form url="[controller:'subscription', action:'subscribe']" name="subscriptionForm">
			<g:textField required="true" name="email" value="${registration?.email}"></g:textField>
			<g:localeSelect name="lang" value="${ request.locale }" style="display:none;"/>	
			<input type="submit"></input>
			<g:hasErrors bean="${subscription}" field="email">
				<div class="error"><g:fieldError bean="${subscription}" field="email" /></div>
			</g:hasErrors>
		</g:form>
	</div>                    			

	<div class="content-line2">                        
		<g:message code="app.subscription.dialog.content.line2"/>                                     
	</div>                
</body>
</html>
