package com.grails.subscribe

class Subscription{
	String email
	String first_name
	String gender
	String last_name	
	String locale	
	static constraints={
		email(email:true,unique:true)
		first_name nullable:true
		gender nullable:true
		last_name nullable:true	
		locale nullable:true
	}
}

