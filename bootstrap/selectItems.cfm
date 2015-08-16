<!--- This is a wrapper option. Generates a list of options. See selectItem for single --->
<!---@ Note: This can feed selectManyMenu, selectOneMenu, selectOneRadio --->



<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:selectItems."; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	variables.MyParentTag = listfirst(listrest(GetBaseTagList()));

	thisTag.Parent = GetBaseTagData(variables.MyParentTag);

	param attributes.binding			= "Value";
	param attributes.disabled		= false;
	param attributes.displayBinding	= "Display";
	param attributes.group			= "";
	param attributes.id				= "auto";
	param attributes.look			= "";
	param attributes.processed 		= true;
	param attributes.query			= QueryNew("Label,Value");
	param attributes.rendered 		= true;
	param attributes.selected		= false;
	param attributes.selectedValue	= [];	// may be an array. We use arrays so that if the values commas, selecting will still work
	param attributes.tooltipBinding	= "";
	
	if(!isArray(attributes.selectedValue))	attributes.selectedValue = [attributes.selectedValue];
	
	
			     
     if (!attributes.processed) exit "exitTag";
	if (!attributes.rendered) exit "exitTag";
	
	if (attributes.query.recordcount == 0) exit "exitTag";
     break;
     
case "end" :     
	
	
	for(variables.myRow = 1; variables.myRow <= attributes.query.recordcount; variables.myRow++)	{
		
		variables.myValue = evaluate("attributes.query.#attributes.binding#[#variables.myRow#]");
		
		variables.Data = {
			disabled	= attributes.disabled,
			id		= '',
			display	= evaluate("attributes.query.#attributes.displayBinding#[#variables.myRow#]"),
			look		= attributes.look,
			selected	= (attributes.selected || ArrayContains(attributes.selectedValue, variables.myValue)),
			tooltip	= (attributes.tooltipBinding == "" ? "" : evaluate("attributes.query.#attributes.tooltipBinding#[#variables.myRow#]")),
			value	= variables.myValue
			};
		
     
			ArrayAppend(thisTag.Parent.thisTag.arOption, 			variables.Data);
											

		} // end for
     

     thisTag.GeneratedContent = "";
     
	break;
	}

</cfscript>