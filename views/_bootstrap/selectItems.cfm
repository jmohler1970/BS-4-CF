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
	param attributes.groupBinding		= "";
	param attributes.idBinding		= "auto";
	param attributes.lookBinding		= "";
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
		
		
		QueryAddRow( thisTag.Parent.thisTag.qryOption);
		QuerySetCell(thisTag.Parent.thisTag.qryOption, "disabled", 	attributes.disabled);
		QuerySetCell(thisTag.Parent.thisTag.qryOption, "display", 	evaluate("attributes.query.#attributes.displayBinding#[#variables.myRow#]"));
		QuerySetCell(thisTag.Parent.thisTag.qryOption, "selected",	(attributes.selected || attributes.selectedValue.contains(variables.myValue)));
		
		
		if (attributes.groupBinding	!= "")		QuerySetCell(thisTag.Parent.thisTag.qryOption, "group", 	evaluate("attributes.query.#attributes.groupBinding#[#variables.myRow#]"));
		if (attributes.idBinding		== "auto")	QuerySetCell(thisTag.Parent.thisTag.qryOption, "id", 		"auto");
		if (attributes.idBinding		!= "auto")	QuerySetCell(thisTag.Parent.thisTag.qryOption, "id", 		evaluate("attributes.query.#attributes.idBinding#[#variables.myRow#]"));
		if (attributes.lookBinding 	!= "")		QuerySetCell(thisTag.Parent.thisTag.qryOption, "look", 	evaluate("attributes.query.#attributes.lookBinding#[#variables.myRow#]"));
		if (attributes.tooltipBinding	!= "")		QuerySetCell(thisTag.Parent.thisTag.qryOption, "tooltip",	evaluate("attributes.query.#attributes.tooltipBinding#[#variables.myRow#]"));
		if (attributes.binding		!= "")		QuerySetCell(thisTag.Parent.thisTag.qryOption, "value", 	variables.myValue);
		
		
							

		} // end for
     

     thisTag.GeneratedContent = "";
     
	break;
	}

</cfscript>