
var fbmanager=function(){
	var postMsg;
	var postToWall=function(text){
		if(text){
			FB.api('/me/feed', 'post', { message: text }, function(response) {
			  if (!response || response.error) {
			    alert('Error occured');
			  } else {
			    alert('Post ID: ' + response.id);
			  }
			});
		}
	};

	var subscribeUser=function () {
	    FB.api('/me', function(response) {	      
	      var xhr=$.post("subscription/subscribe",response);
	      xhr.fail();
	      xhr.done(postToWall(this.postMsg));	      
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