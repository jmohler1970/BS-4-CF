<!--- This is a wrapper that matches Awesome Bootstrap Checkbox. But it can be updated to support anything --->

<!--- See: https://github.com/flatlogic/awesome-bootstrap-checkbox --->


<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:selectBooleanCheckbox."; 



switch (thisTag.ExecutionMode)	{
case "start" :

	variables.result	= "";
	variables.crlf 	= chr(13) & chr(10);
	variables.tagStack	= getBaseTagList().ListToArray();

	param attributes.look			= "";
	param attributes.name			= "";
	param attributes.processed		= true;
	param attributes.rendered		= true;
	param attributes.tooltip			= "bottom";
	param attributes.tooltipPosition	= "bottom";
	param attributes.value			= 1;

	if (attributes?.id == "auto")	attributes.id = "checkbox_" & left(createUUID(), 10);

	// Patch this
	if(attributes?.disabled == "disabled")	attributes.disabled = true;


	if (!application?.Bootstrap?.validLook.contains(attributes.look))	throw "This is an invalid look option";
	if (!isnumeric(attributes?.tabIndex))	attributes?.tabIndex = "";


	if (!attributes.processed) exit "exitTag";

	variables.fullCacheid = variables.tagStack[1] & " " & attributes?.key & " " & attributes?.cacheid;
	if (attributes?.cacheid != "" && cacheidExists(variables.fullcacheid, application.Bootstrap.cache.content) && attributes.rendered)	{
							writeOutput(cacheGet(variables.fullCacheid, application.Bootstrap.cache.content));
							exit "exitTag";
							}

	break;

case "end" :



									variables.result &= '<div class="checkbox';
	if(attributes?.circle	== true)		variables.result &= ' checkbox-circle';
	if(attributes?.look    	!= "")		variables.result &= ' checkbox-#encodeForHTMLAttribute(attributes.look.lcase())#';
	if(attributes?.inline	== true)		variables.result &= ' checkbox-inline';
									variables.result &= '"';

	if(attributes?.tooltip	!= "")		variables.result &= ' title="#encodeForHTMLAttribute(attributes.tooltip)#"';
	if(attributes?.tooltip	!= "")		variables.result &= ' data-placement="#encodeForHTMLAttribute(attributes.tooltipPosition)#"';
	if(attributes?.tooltip	!= "")		variables.result &= ' data-toggle="tooltip"';
									variables.result &= '>';



									variables.result &= '<input type="checkbox"';
	if(attributes.name		!= "")		variables.result &= ' name="#encodeForHTMLAttribute(attributes.name)#"';
	if(attributes?.id		!= "")		variables.result &= ' id="#encodeForHTMLAttribute(attributes.id)#"';
	if(attributes?.checked	== true)		variables.result &= ' checked="checked"';
	if(attributes?.disabled	== true)		variables.result &= ' disabled="disabled"';
	if(attributes?.tabindex	!= "")		variables.result &= ' tabindex="#encodeForHTMLAttribute(attributes.tabindex)#"';
									variables.result &= ' value="#encodeForHTMLAttribute(attributes.value)#"';

									variables.result &= ' />';
									variables.result &= '<label';
	if(attributes?.id		!= "")		variables.result &=	' for="#encodeForHTMLAttribute(attributes.id)#"';
									variables.result &= '>';


									variables.result &= application.generateContent(thisTag.GeneratedContent, variables.tagstack, attributes);	


									variables.result &= '</label>';

									variables.result &= variables.crlf &  '</div>';

	if (attributes?.cacheid != "")		CachePut(variables.fullCacheid, variables.result, 1, 1, application.Bootstrap.cache.content);

	thisTag.GeneratedContent = "";
	if (attributes.rendered)				writeOutput(variables.result);

	break;
	}

</cfscript>