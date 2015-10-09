
<cfimport prefix="b" taglib="../_bootstrap">


<b:row>
	<b:column span="12">	

		<b:h1 pageHeader="true">Antisamy</b:h1>
		<p>&lt;b:p&gt;</p>
	</b:column>	
</b:row>





<b:h1 key="try_me" />


<cfsavecontent variable="horrible">


<iframe><b>Bold text</b>
""""""""<>>! script
<script type="text/javascript">destroy_you_website()</script>

<blink>hahahah</blink>

<table>
<tr>
<td>


</cfsavecontent>

<cfparam name="rc.content" default="#horrible#">


<b:well>

	<form action="?" method="post">
		<b:formGroup>
			<label for="exampleInputEmail1">Content to be echoed</label>
			<cfoutput>
			<textarea class="form-control" name="content" rows="5">#encodeForHTMLAttribute(rc.content)#</textarea>
			</cfoutput>
		</b:formGroup>
		
  
		<b:commandButton value="Submit" />
	</form>
</b:well>




<h2>Alert with i18n</h2>

<b:alert key="ER_YOUR_CHANGES" placeholder="#rc.content#" />



