package com.grails.subscribe

class SubscriptionController{
	def index(){
		render view: "subscribe"
	}
		
	def subscribe(){
		def subscription=new Subscription(params)	 		
		subscription.save()
		render(view:'subscribe',model:[subscription:subscription])
	}	
}
