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
	

	QueryAddRow( thisTag.Parent.thisTag.qryOption);
     QuerySetCell(thisTag.Parent.thisTag.qryOption, "disabled", 	attributes.disabled);
     QuerySetCell(thisTag.Parent.thisTag.qryOption, "id", 		attributes.id);
     QuerySetCell(thisTag.Parent.thisTag.qryOption, "display", 	attributes.display);
     QuerySetCell(thisTag.Parent.thisTag.qryOption, "look", 	attributes.look);
     QuerySetCell(thisTag.Parent.thisTag.qryOption, "value", 	attributes.value);
     QuerySetCell(thisTag.Parent.thisTag.qryOption, "selected",	attributes.selected);
     QuerySetCell(thisTag.Parent.thisTag.qryOption, "tooltip",	attributes.tooltip);
     
	
		
	thisTag.generatedContent = "";
	break;
	}

</cfscript>