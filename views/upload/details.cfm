<cfimport prefix="b" taglib="../_bootstrap">



<cfset mypath = rc.path EQ "" ? "" : rc.path & "/">

<div class="main">


<b:h1 key="IMG_CONTROL_PANEL" />



<script type="text/javascript">
var copyKitTextArea = $('textarea.copykit');
function doCode()	{
		var codetype = myFrm.img_info[myFrm.img_info.selectedIndex].value;;
		var code = $('p#'+ codetype).html();
		
		var copyKitTextArea = $('textarea.copykit');
		copyKitTextArea.html(code);
		}
</script>



<b:well>


<cfoutput>
<p>
	<b><b:outputText key="ORIGINAL_IMG" /></b> <code>#rc.info.width#&times;#rc.info.height#</code> &nbsp;  | &nbsp;
	<b><b:outputText key="CURRENT_THUMBNAIL" /></b> <code>#rc.infothumb.height#&times;#rc.infothumb.height#</code>
</p>

<form name="myFrm">
	<select id="img_info" class="input-xxlarge" onchange="doCode();">
		<option selected="selected" value="code-img-link"		><b:outputText key="LINK_ORIG_IMG" /></option>
		<option 					value="code-img-html"	><b:outputText key="HTML_ORIG_IMG" /></option>
		<option 					value="code-thumb-html"	><b:outputText key="HTML_THUMBNAIL" /></option>
		<option 					value="code-thumb-link"	><b:outputText key="LINK_THUMBNAIL" /></option>
		<option 					value="code-imgthumb-html"><b:outputText key="HTML_THUMB_ORIG" /></option>
	</select><br />
	<textarea class="copykit form-control" rows="3" >/data/uploads/#mypath##rc.name#</textarea>
</form>

<div class="toggle" style="display : none;">
	<p id="code-img-html">&lt;img src="/data/uploads/#mypath##rc.name#" height="#rc.info.height#" width="#rc.info.width#" alt=""></p>
	<p id="code-img-link">/data/uploads/#mypath##rc.name#</p>
	<p id="code-thumb-html">&lt;img src="/data/thumbs/#mypath##rc.name#" height="#rc.infothumb.height#" width="#rc.infothumb.width#" alt=""></p>
	<p id="code-thumb-link">/data/thumbs/#mypath##rc.name#</p>
	<p id="code-imgthumb-html">&lt;a href="/data/uploads/#mypath##rc.name#">&lt;img src="/data/thumbs/#mypath##rc.name#" height="#rc.infothumb.height#" width="#rc.infothumb.width#" alt="" />&lt;/a></p>
</div>

<p><a href="##" class="select-all"><b:outputText key="CLIPBOARD_INSTR" /></a></p>
			

	</cfoutput>
</b:well>


<cfoutput>
<p>
	<img src="#rc.site_root##rc.uploadspath##rc.path#/#rc.name#" />
</p>
</cfoutput>

</div>