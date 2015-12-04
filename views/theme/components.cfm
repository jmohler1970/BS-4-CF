<cfimport prefix="b" taglib="../_bootstrap">



<form action="~/components" method="post">


<cfoutput>
<cfset myrow = 0>

	<cfloop index="component" list="#rc.components.keylist()#">
	<cfset myrow++>	
	<p>
		<b>#component#</b><br />
		<small>##rc.components.#component###</small><br />
		<textarea class="form-control" rows="7" name="val[#myrow#]">#rc.components[component]#</textarea>
		<input type="hidden" name="slug[#myrow#]" value="#component#" />
		<input type="hidden" name="title[#myrow#]" value="#component#" />
	</p>
	
	</cfloop>
</cfoutput>


	<p id="submit_line" class="<?php echo $submitclass; ?>" >
		<b:commandButton name="submitted" key="Save_Components" />
		&nbsp;&nbsp;
		<b:outputText key="OR" />
		&nbsp;&nbsp; 
		<b:commandLink href="~/components" key="Cancel" />
	</p>
</form>



