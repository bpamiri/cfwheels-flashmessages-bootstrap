<cfcomponent output="false">
	<cffunction name="init" returntype="struct" access="public">
		<cfscript>
			var loc = {};
			this.version = "2.0.0";
			return this;
		</cfscript>
	</cffunction> 
	<cffunction name="flashMessages" access="public" returntype="string" output="false"> 
		<cfscript>
			var result = core.flashMessages(argumentCollection=arguments);
		</cfscript>
		<cfreturn result />
	</cffunction> 
</cfcomponent>