<!--- This is a wrapper option. Generates a list of options. See selectItem for single --->
<!---@ Note: This can feed selectManyMenu, selectOneMenu, selectOneRadio --->



<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:selectItems."; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	variables.MyParentTag = listfirst(listrest(GetBaseTagList()));

	thisTag.Parent = GetBaseTagData(variables.MyParentTag);

	param attributes.id				= "auto";
	param attributes.query			= QueryNew("Label,Value");
	param attributes.displayBinding	= "Display";
	param attributes.group			= "";
	param attributes.look			= "";
	param attributes.valueBinding		= "Value";
	param attributes.processed 		= true;
	param attributes.rendered 		= true;
	param attributes.square			= false;	// if you go square, you go all square
	param attributes.selected		= "";	// may be an array. We use arrays so that if the values commas, selecting will still work
	param attributes.tooltipBinding	= "";
	
	if(!isArray(attributes.selected))	attributes.selected = [attributes.selected];
	
			     
     if (!attributes.processed) exit "exitTag";
	if (!attributes.rendered) exit "exitTag";
	
	if (attributes.query.recordcount == 0) exit "exitTag";
     break;
     
case "end" :     
	
	
	for(variables.myRow = 1; variables.myRow <= attributes.query.recordcount; variables.myRow++)	{
		
		variables.Data = {
			disabled	= attributes.disabled,
			id		= '',
			display	= evaluate("attributes.query.#attributes.display#[#variables.myRow#]"),
			look		= attributes.look,
			selected	= ArrayContains(attributes.selected, variables.MyValue),
			square	= attributes.square,
			tooltip	= evaluate("attributes.query.#attributes.tooltip#[#variables.myRow#]"),
			value	= evaluate("attributes.query.#attributes.value#[#variables.myRow#]")
			};
		
     
			ArrayAppend(thisTag.Parent.thisTag.arTab, 			variables.Data);
											

		} // end for
     

     thisTag.GeneratedContent = "";
     
	break;
	}

</cfscript>