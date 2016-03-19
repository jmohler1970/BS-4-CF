<!---@ Description: Support for wysiwyg --->
<!---@ Based on: http://mindmup.github.io/bootstrap-wysiwyg/ --->



	
	
	

<cfswitch expression="#thisTag.ExecutionMode#">
<cfcase value="start">

	<cfscript>
	variables.result	= "";
	variables.crlf 	= chr(13) & chr(10);
	variables.tagStack	= getBaseTagList().ListToArray();

	param attributes.name;

	param attributes.id				= attributes.name;
	param attributes.isSafeHTML		= application?.Bootstrap?.isSafeHTML.contains(variables.tagStack[1].lcase());
	param attributes.processed	 	= true;
	param attributes.profile			= application?.Bootstrap?.profile;
	param attributes.rendered 		= true;
	param attributes.throwOnError		= application?.Bootstrap?.throwOnError;
	param attributes.useDefaultButtons = true;
	param attributes.useDefaultJS 	= true;
	</cfscript>
	
	
<cfsavecontent variable="variables.defaultButtons">
<div id="alerts"></div>
<div class="btn-toolbar" data-role="editor-toolbar" data-target="#editor">
	<div class="btn-group">
		<a class="btn btn-default dropdown-toggle" data-toggle="dropdown"
			title="Font"><i class="fa fa-font"></i><b class="caret"></b>
		</a>
		<ul class="dropdown-menu">
		</ul>
	</div>
	<div class="btn-group">
		<a class="btn btn-default dropdown-toggle" data-toggle="dropdown"
			title="Font Size"><i class="fa fa-text-height"></i>&nbsp;<b
			class="caret"></b>
		</a>
		<ul class="dropdown-menu">
			<li><a data-edit="fontSize 5" class="fs-five"><font size="5">Huge</font></a></li>
			<li><a data-edit="fontSize 3" class="fs-three"><font size="3">Normal</font></a></li>
			<li><a data-edit="fontSize 1" class="fs-one"><font size="1">Small</font></a></li>
		</ul>
	</div>
	<div class="btn-group">
		<a class="btn btn-default" data-edit="bold" title="Bold (Ctrl/Cmd+B)"><i class="fa fa-bold"></i></a>
		<a class="btn btn-default" data-edit="italic" title="Italic (Ctrl/Cmd+I)"><i class="fa fa-italic"></i></a>
		<a class="btn btn-default" data-edit="strikethrough" title="Strikethrough"><i class="fa fa-strikethrough"></i></a>
		<a class="btn btn-default" data-edit="underline" title="Underline (Ctrl/Cmd+U)"><i class="fa fa-underline"></i></a>
	</div>
	<div class="btn-group">
		<a class="btn btn-default" data-edit="insertunorderedlist" title="Bullet list"><i class="fa fa-list-ul"></i></a>
		<a class="btn btn-default" data-edit="insertorderedlist" title="Number list"><i class="fa fa-list-ol"></i></a>
		<a class="btn btn-default" data-edit="outdent" title="Reduce indent (Shift+Tab)"><i class="fa fa-outdent"></i></a>
		<a class="btn btn-default" data-edit="indent" title="Indent (Tab)"><i class="fa fa-indent"></i></a>
	</div>
	<div class="btn-group">
		<a class="btn btn-default" data-edit="justifyleft" title="Align Left (Ctrl/Cmd+L)"><i class="fa fa-align-left"></i></a>
		<a class="btn btn-default" data-edit="justifycenter" title="Center (Ctrl/Cmd+E)"><i class="fa fa-align-center"></i></a>
		<a class="btn btn-default" data-edit="justifyright" title="Align Right (Ctrl/Cmd+R)"><i class="fa fa-align-right"></i></a>
		<a class="btn btn-default" data-edit="justifyfull" title="Justify (Ctrl/Cmd+J)"><i class="fa fa-align-justify"></i></a>
	</div>
	<div class="btn-group">
		<a class="btn btn-default dropdown-toggle" data-toggle="dropdown" title="Hyperlink"><i class="fa fa-link"></i></a>
		<div class="dropdown-menu input-append">
			<input placeholder="URL" type="text" data-edit="createLink" />
			<button class="btn" type="button">Add</button>
		</div>
	</div>
	<div class="btn-group">
		<a class="btn btn-default" data-edit="unlink" title="Remove Hyperlink"><i class="fa fa-unlink"></i></a>
		<span class="btn btn-default" title="Insert picture (or just drag & drop)" id="pictureBtn"> <i class="fa fa-picture-o"></i>
			<input class="imgUpload" type="file" data-role="magic-overlay" data-target="#pictureBtn" data-edit="insertImage" />
		</span>
	</div>
	<div class="btn-group">
		<a class="btn btn-default" data-edit="undo" title="Undo (Ctrl/Cmd+Z)"><i class="fa fa-undo"></i></a>
		<a class="btn btn-default" data-edit="redo" title="Redo (Ctrl/Cmd+Y)"><i class="fa fa-repeat"></i></a>
	</div>
	<input class="pull-right" type="text" data-edit="inserttext" id="voiceBtn" />
</div>
</cfsavecontent>




  

<cfsavecontent variable="variables.defaultJS">
<script type="text/javascript">
  $(function(){

    function initToolbarBootstrapBindings() {
		var fonts = ['Serif', 'Sans', 'Arial', 'Arial Black', 'Courier', 
          	'Courier New', 'Comic Sans MS', 'Helvetica', 'Impact', 'Lucida Grande', 'Lucida Sans', 'Tahoma', 'Times',
			'Times New Roman', 'Verdana'],
			fontTarget = $('[title=Font]').siblings('.dropdown-menu');
      $.each(fonts, function (idx, fontName) {
          fontTarget.append($('<li><a data-edit="fontName ' + fontName +'" style="font-family:\''+ fontName +'\'">'+fontName + '</a></li>'));
      });
     
     $('a[title]').tooltip({container:'body'});
    	
    	$('.dropdown-menu input').click(function() {return false;})
		.change(function () {$(this).parent('.dropdown-menu').siblings('.dropdown-toggle').dropdown('toggle');})
		.keydown('esc', function () {this.value='';$(this).change();});

      $('[data-role=magic-overlay]').each(function () { 
     	var overlay = $(this), target = $(overlay.data('target')); 
		overlay.css('opacity', 0).css('position', 'absolute').offset(target.offset()).width(target.outerWidth()).height(target.outerHeight());
      });
      
      if ("onwebkitspeechchange"  in document.createElement("input")) {
        var editorOffset = $('#editor').offset();
        $('#voiceBtn').css('position','absolute').offset({top: editorOffset.top, left: editorOffset.left+$('#editor').innerWidth()-35});
      } else {
        $('#voiceBtn').hide();
      }
	};
	
	function showErrorAlert (reason, detail) {
		var msg='';
		if (reason==='unsupported-file-type') { msg = "Unsupported format " + detail; }
		else {
			console.log("error uploading file", reason, detail);
		}
		$('<div class="alert"> <button type="button" class="close" data-dismiss="alert">&times;</button>'+ 
		 '<strong>File upload error</strong> '+msg+' </div>').prependTo('#alerts');
	};

	initToolbarBootstrapBindings();  

	$('#<cfoutput>#encodeForHTMLAttribute(attributes.id)#</cfoutput>').wysiwyg({ fileUploadError: showErrorAlert} );
	

	// make it work right
	$('#<cfoutput>#encodeForHTMLAttribute(attributes.id)#</cfoutput>').html($('#<cfoutput>#encodeForHTMLAttribute(attributes.id)#</cfoutput>Copy').val());

	// you had better make sure this exists
	
	
	$('#postSubmit').click(function () {
     	$('#<cfoutput>#encodeForHTMLAttribute(attributes.id)#</cfoutput>Copy').val($('#<cfoutput>#encodeForHTMLAttribute(attributes.id)#</cfoutput>').html());
		});
	

	window.prettyPrint && prettyPrint();
  });
</script>
</cfsavecontent>
	

</cfcase>
<cfcase value="end">

	<cfscript>
	if(attributes?.binding 	!= "" && isDefined("caller.rc.#attributes.binding#")) 	thisTag.GeneratedContent = evaluate("caller.rc.#attributes.binding#");


	
	if(attributes.useDefaultButtons)		variables.result &= variables.defaultButtons;
	
		
									variables.result &= '<div id="#encodeForHTMLAttribute(attributes.id)#" class="wysiwyg #encodeForHTMLAttribute(attributes?.styleClass)#"';
	if(attributes?.style	!= "")		variables.result &= ' style="#encodeForHTMLAttribute(attributes.style)#"';
									variables.result &= ' >';

									variables.result &= getSafeHTML(attributes?.htmlPlaceholder);
									variables.result &= '</div>';
									
	if(attributes.useDefaultJS)			variables.result &= variables.defaultJS;								
								
									variables.result &= '<textarea style="display: none;" id="#encodeForHTMLAttribute(attributes.id)#Copy" name="#encodeForHTMLAttribute(attributes.name)#">';
								
									variables.result &= application.generateContent(thisTag.GeneratedContent, variables.tagstack, attributes);	
								
									variables.result &= '</textarea>';
								
	
	
	thisTag.GeneratedContent = "";
     if (attributes.rendered)				writeOutput(variables.result);
	</cfscript>

</cfcase>
</cfswitch>	
	


	