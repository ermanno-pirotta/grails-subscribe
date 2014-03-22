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
		<div class="title">
			<g:message code="app.subscription.dialog.title"/>
		</div>
		<g:if test="${subscription==null || subscription.hasErrors()}">
			<div class="content-line1">
				<g:message code="app.subscription.dialog.content.line1"/>                        
			</div>               
			<div class="register">
					<fb:login-button data-scope="email,publish_actions" show-faces="false" width="200" max-rows="1" onlogin="manager.login()"><g:message code="app.subscription.facebook.button"/></fb:login-button>      
					<g:hasErrors bean="${subscription}" field="email">
						<div class="error"><g:fieldError bean="${subscription}" field="email" /></div>
					</g:hasErrors>
			</div>                    			

			<div class="content-line2">                        
				<g:message code="app.subscription.dialog.content.line2"/>                                     
			</div>
		</g:if>   
		<g:else>
			<div class="outer">
				<p>
		                	<g:message code="app.subscription.dialog.success"/>              
				</p>
			</div>
		</g:else>     
	</body>
</html>
