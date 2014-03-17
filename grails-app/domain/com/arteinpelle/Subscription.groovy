package com.arteinpelle
class Subscription{
	String email
	String lang
	static constraints={
		email(email:true,unique:true)
	}
}

