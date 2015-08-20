<!---@ Description: Support for buttonGroup --->
<!---@ Note: If data toggle is true, then this tag supports selectItem, and selectItems --->



<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:buttonGroup."; 



switch (thisTag.ExecutionMode)	{
case "start" :

	variables.result = "";
	variables.crlf =  chr(13) & chr(10);

	thisTag.arOption 				= [];

	param attributes.id			= "";
	param attributes.justified	= false;
	param attributes.name		= "";
	param attributes.orientation 	= "horizontal";
	param attributes.processed 	= true;
	param attributes.rendered	= true;
	param attributes.size		= "";
	param attributes.toggle		= false;
	param attributes.tooltip		= "";



	if (!attributes.processed) exit "exitTag";
	break;

case "end" :

	if(attributes.orientation == "horizontal")	variables.result &= '<div class="btn-group';
	if(attributes.orientation == "vertical")	variables.result &= '<div class="btn-group-vertical';

	if(attributes.size		!= "")	variables.result &= ' btn-group-#attributes.size#';
	if(attributes.justified)			variables.result &= ' btn-group-justified';
								variables.result &= '"';
	if(attributes.id		!= "")	variables.result &= ' id="#attributes.id#"';
	if(attributes.tooltip	!= "")	variables.result &=	' title="#attributes.tooltip#"';
	if(attributes.toggle)			variables.result &= ' data-toggle="buttons"';
								variables.result &= ' role="group">';


	for (variables.option in thisTag.arOption)	{
		
		if (variables.option.id == "auto")	variables.option.id = "auto_" & left(createUUID(), 10);


									variables.result &= '<label class="btn btn-#variables.option.look# ';
		
		if(variables.option.selected)		variables.result &= ' active';
									variables.result &= '"';
	
		if(variables.option.tooltip	!= "")    variables.result &= ' tooltip="#attributes.tooltip#"';
									variables.result &= '>';



									variables.result &= '<input type="radio"';
		if(attributes.name		!= "")	variables.result &= ' name="#attributes.name#"';
		if(variables.option.id	!= "")	variables.result &= ' id="#variables.option.id#"';
		if(variables.option.selected)
									variables.result &= ' checked="checked"';
									variables.result &= ' value="#variables.option.value#"';	
									variables.result &= ' />';
		
									variables.result &= variables.option.display; // pass through of content
									variables.result &= '</label>';
									
									variables.result &= variables.crlf & '</label><!-- /.radio -->';

		} // end for
								
							
								variables.result &= thisTag.GeneratedContent; // pass through of content
	
								variables.result &= '</div><!-- /.btn-group -->';
								variables.result &= variables.crlf;


	thisTag.GeneratedContent = "";
	if (attributes.rendered)			writeOutput(variables.result);

	break;
	}
</cfscript>