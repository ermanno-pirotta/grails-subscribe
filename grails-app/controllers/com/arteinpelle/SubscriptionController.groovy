package com.arteinpelle

class SubscriptionController{
	def index(){
		render view: "subscribe"
	}
		
	def subscribe(){
		def subscription=new Subscription(email:params.email,lang:params.lang)	 		
		subscription.save()
		render(view:'subscribe',model:[subscription:subscription])
	}	
}
