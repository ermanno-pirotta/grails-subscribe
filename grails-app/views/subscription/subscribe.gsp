<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="landing"/>
		<title><g:message code="app.subscription.title"/></title>
	</head>
	<body>
		<r:script>			
		$(function() {
			   window.manager=fbmanager();
			   manager.init('${grailsApplication.config.app.subscription.facebook.sdk.id}',"${message(code:'app.subscription.facebook.post.text')}");
		});	   
		</r:script> 
		<div class="main-content">
			<div class="title">
				<g:message code="app.subscription.dialog.content.title"/>
			</div>
			<div class="content-line1">
				<g:message code="app.subscription.dialog.content.line1"/>                        
			</div>               
			<div class="register">
					<fb:login-button data-scope="email,publish_actions" show-faces="false" width="200" max-rows="1" onlogin="manager.login()"><g:message code="app.subscription.facebook.button"/></fb:login-button>   
			</div>                    			

			<div class="content-line2">                        
				<g:message code="app.subscription.dialog.content.line2"/>                                     
			</div>
		</div>  
	</body>
</html>
