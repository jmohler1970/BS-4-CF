<!--- This is a wrapper that matches Awesome Bootstrap Checkbox. But it can be updated to support anything --->



<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:radio."; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	variables.result = "";
	variables.crlf =  chr(13) & chr(10);
  
	param attributes.square		= false;		// make it look like check
	param attributes.checked		= false;
	param attributes.disabled	= false;
	param attributes.name		= "";
	param attributes.id			= attributes.name;
	param attributes.inline		= false;
	param attributes.look		= "";
	param attributes.processed 	= true;
	param attributes.rendered 	= true;
	param attributes.title		= "";
	param attributes.tooltip		= "";
	
	variables.preClass = attributes.square ? "checkbox" : "radio";
	
	if (attributes.id == "auto")	attributes.id = "auto_" & left(createUUID(), 10);
		     
     if (!attributes.processed) exit "exitTag";
	break;
     
case "end" :     
	
	if(attributes.look == "" && attributes.square)	variables.result &= '<div class="checkbox checkbox';
	else							variables.result &= '<div class="#variables.preClass#';
	
	if(attributes.look    	!= "")    variables.result &= ' #variables.preClass#-#attributes.look#';
	if(attributes.inline)			variables.result &= ' #variables.preClass#-inline';
	   							variables.result &= '"';

	if(attributes.tooltip    != "")    variables.result &= ' tooltip="#attributes.tooltip#"';
								variables.result &= '>';
								
								
	
								variables.result &= '<input type="radio"';
	if(attributes.name		!= "")	variables.result &= ' name="#attributes.name#"';
	if(attributes.id		!= "")	variables.result &= ' id="#attributes.id#"';
	if(attributes.checked)			variables.result &= ' checked="checked"';
	if(attributes.disabled)			variables.result &= ' disabled="disabled"';
								variables.result &= ' />';
								variables.result &= '<label';
	if(attributes.id		!= "")	variables.result &=	' for="#attributes.id#"';
								variables.result &= '>';

	
								variables.result &= thisTag.GeneratedContent; // pass through of content
								variables.result &= '</label>';
								
								variables.result &= variables.crlf & '</div><!-- /.radio -->';
     

     thisTag.GeneratedContent = "";
     if (attributes.rendered)			writeOutput(variables.result);
     
	break;
	}

</cfscript>