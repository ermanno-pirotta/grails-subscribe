# grails_subscribe

## Overview
Grails application to gather early subscriptions to a website before launching it. This might be useful for market research when time and money are hard constraints on a project.
The application is integrated with the Facebook platform via Javascript SDK.

The application flow is the following:
1. The user logs in via the Facebook login button.
2. The user accepts to give the application the Facebook required permissions.
3. The user is registered in the application database
4. A post on the user's wall is posted by the application.
5. A message is displayed to the user after the process has been completed.

## Running locally
1. Clone the application from this repository.
2. Set a background image, by just copying a png file named background.png in the web-app\images directory.
3. Set your Facebook Javascript SDK key in the Config.groovy file, by specifying a value for the "app.subscription.facebook.sdk.id" key.
4. Edit the subscription page text in the messages.properties files.
5. Change the database settings for production. By default, an in-memory database is used.
6. Run grails run-app to test the application.

## Legal
Background image from[link https://www.flickr.com/photos/horiavarlan/4263328317/sizes/o/],
licenced with the "Creative Commons" license, no changes were made.
You can find the licence at [link http://creativecommons.org/licenses/by/2.0/].