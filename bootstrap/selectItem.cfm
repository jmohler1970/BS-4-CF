<!---@ DescriptionThis is a wrapper item. Generates a single option. See selectItems for multiple rows --->
<!---@ Note: This can feed selectManyMenu, selectOneMenu, selectOneRadio --->



<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:selectItem."; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	variables.MyParentTag = listfirst(listrest(GetBaseTagList()));

	thisTag.Parent = GetBaseTagData(variables.MyParentTag);

	param attributes.disabled	= false;
	param attributes.id			= "";
	param attributes.display		= "";
	param attributes.processed 	= true;
	param attributes.value		= attributes.display; 
	param attributes.processed 	= true;
	param attributes.rendered 	= true;
	param attributes.selected	= false;
	param attributes.square		= false;		// make it look like check
	param attributes.tooltip		= "";



     if (!attributes.processed) exit "exitTag";
	break;
     
case "end" :     
	

	variables.Data = {
		square	= attributes.square,
		disabled	= attributes.disabled,
		id		= attributes.id,
		display	= attributes.display,
		value	= attributes.value,
		selected	= attributes.selected,
		tooltip	= attributes.tooltip
		};
     
     ArrayAppend(thisTag.Parent.thisTag.arTab, 			variables.Data);

	
		
	thisTag.generatedContent = "";
	break;
	}

</cfscript>