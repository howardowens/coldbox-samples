component {
	
	// Configure ColdBox Application
	function configure(){
	
		// coldbox directives
		coldbox = {
			//Application Setup
			appName 				= "Validation Sample",
	
			//Development Settings
			debugMode				= false,
			debugPassword			= "",
			reinitPassword			= "",
			handlersIndexAutoReload = true,
	
			//Implicit Events
			defaultEvent			= "dashboard.index",
			requestStartHandler		= "",
			requestEndHandler		= "",
			applicationStartHandler = "",
			applicationEndHandler	= "",
			sessionStartHandler 	= "",
			sessionEndHandler		= "",
			missingTemplateHandler	= "",
	
			//Error/Exception Handling
			exceptionHandler		= "",
			onInvalidEvent			= "",
			customErrorTemplate		= "/coldbox/system/includes/BugReport.cfm",
	
			//Application Aspects
			handlerCaching 			= false,
			eventCaching			= false
		};
	
		// global settings - if you wanted to you could move these to environment specific settings
		settings = {
		};
	
		// environment settings, create a detectEnvironment() method to detect it yourself.
		// create a function with the name of the environment so it can be executed if that environment is detected
		// the value of the environment is a list of regex patterns to match the cgi.http_host.
		environments = {
			development = "^cf9.,^railo."
		};
	
		//i18n & Localization
		i18n = {
			defaultResourceBundle = "includes/i18n/main",
			defaultLocale = "en_US",
			localeStorage = "cookie",
			unknownTranslation = "**NOT FOUND**"
		};
	
	
		//Register interceptors as an array, we need order
		interceptors = [
			 //SES
			 {class="coldbox.system.interceptors.SES"}
		];
	
		// validation
		validation = {
			sharedConstraints = {
				userForm = {
					username = {required=true, size="3..20"},
					password = {required=true, size="6..20"}
				}
			}
		};
	
	}
	
	function development(){
		//wirebox.singletonReload = true;
	}
	
}