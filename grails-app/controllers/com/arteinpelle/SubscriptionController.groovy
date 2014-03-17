package com.arteinpelle

class SubscriptionController{
	def index(){
		render view: "subscribe"
	}
		
	def subscribe(){
		def subscription=new Subscription(email:params.email,lang:params.lang)	 		
		if(subscription.save()){
			redirect action: "success"
		}
		else{
			render(view:'subscribe',model:[subscription:subscription])
		}
	}
	

	def success(){
		render view: "success"
	}
}
