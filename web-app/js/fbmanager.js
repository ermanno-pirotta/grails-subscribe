
var fbmanager=function(){
	var postMsg;
	var postToWall=function(text){
		if(text){
			console.debug(text);
			//FB.api('/me/feed', 'post', { message: text }, null);			
		}
	};
	
	var displayResponse=function(response){
		$(".main-content").html(response);
	};
	
	var submitInfo=function(response){
		var xhr=$.post("subscription/subscribe",response);
		
		xhr.done(function(response){
			postToWall(this.postMsg);
			displayResponse(response);
		});	
		
		xhr.fail(function(response){
			displayResponse(response.responseText);
		});
	};

	
	var subscribeUser=function () {
	    FB.api('/me', function(response) {	   
	    	submitInfo(response);
	    });
	};
	
	var authResponseChange=function(response){
	   if (response.status === 'connected') {
		subscribeUser();
	   }
	};
	
	return{				
		init:function(id,text){
			$.ajaxSetup({ cache: true });
			$.getScript('//connect.facebook.net/en_UK/all.js', function(){
				 FB.init({
				    appId      : id,
				    status     : true, // check login status
				    cookie     : true, // enable cookies to allow the server to access the session
				    xfbml      : true  // parse XFBML
				  });
			});	
			postMsg=text; 
		},
		login:function(){
			subscribeUser();	
		}		
	}
}	 