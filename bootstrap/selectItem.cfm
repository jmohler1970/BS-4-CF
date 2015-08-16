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
	param attributes.look		= "";
	param attributes.processed 	= true;
	param attributes.rendered 	= true;
	param attributes.selected	= false;
	param attributes.tooltip		= "";
	param attributes.value		= attributes.display; 
	


     if (!attributes.processed) exit "exitTag";
	break;
     
case "end" :     
	

	variables.Data = {
		disabled	= attributes.disabled,
		id		= attributes.id,
		display	= attributes.display,
		look		= attributes.look,
		value	= attributes.value,
		selected	= attributes.selected,
		tooltip	= attributes.tooltip
		};
     
     ArrayAppend(thisTag.Parent.thisTag.arOption, 			variables.Data);

	
		
	thisTag.generatedContent = "";
	break;
	}

</cfscript>