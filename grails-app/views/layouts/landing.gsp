<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle /></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">		
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'landing.css')}" type="text/css">
		<g:layoutHead/>
		<g:javascript library="application"/>		
		<r:layoutResources />
	</head>
	<body>
		<div class="filter_transparent"></div>	
			    		
		<div class="centered dialog rounded ">        
		    <div class="content">
		    	    <div class="ribbon-wrapper-green">
		    	    	<div class="ribbon-green">
		    	    		<g:message code="app.subscription.dialog.onlinesoon"/>
		    	    	</div>
		    	    </div>	
			    <g:layoutBody/>	               
		    </div>        
		</div>		
		<r:layoutResources />
	</body>
</html>
