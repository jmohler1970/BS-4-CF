<!--- This is a wrapper option. Generates a list of options. See selectItem for single --->
<!--- This is inspired by cfselect --->



<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:selectItems."; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	variables.result = "";
	variables.crlf =  chr(13) & chr(10);
  
	param attributes.query			= QueryNew("Label,Value");
	param attributes.display			= "Display";
	param attributes.group			= "";
	param attributes.value			= "Value";
	param attributes.processed 		= true;
	param attributes.rendered 		= true;
	param attributes.selected		= "";	// may be an array. We use arrays so that if the values commas, selecting will still work
	
	if(!isArray(attributes.selected))	attributes.selected = [attributes.selected];
	
			     
     if (!attributes.processed) exit "exitTag";
     if (attributes.query.recordcount == 0) exit "exitTag";
     break;
     
case "end" :     
	
	
	for(variables.myRow = 1; variables.myRow <= attributes.query.recordcount; variables.myRow++)	{
								
								variables.result &= "<!-- Working #variables.myRow# -->";
							
								variables.myDisplay = evaluate("attributes.query.#attributes.display#[#variables.myRow#]");
								variables.myValue = evaluate("attributes.query.#attributes.value#[#variables.myRow#]");
								
								
								variables.result &= '<option';
								variables.result &= ' value="#myValue#"';
		if(ArrayContains(attributes.selected, variables.MyValue))	variables.result &= ' selected="selected"';
								variables.result &= ' >';
								variables.result &= variables.myDisplay;
								variables.result &= '</option>';
		}							
     

     thisTag.GeneratedContent = "";
     if (attributes.rendered)			writeOutput(variables.result);
     
	break;
	}

</cfscript>