package com.grails.subscribe

import javassist.bytecode.stackmap.BasicBlock.Catch;

class SubscriptionController{
	static allowedMethods = [index: 'GET', subscribe: 'POST']

	def index(){
		render view: "subscribe"
	}

	def subscribe(){		
		def subscription=new Subscription([email:params.email,first_name:params.first_name,gender:params.gender,last_name:params.last_name,locale:params.locale])
		if(subscription.save()){
			render (template: 'success')
		}
		else{
			render (status: 500, template: 'error')
		}
	}
}
