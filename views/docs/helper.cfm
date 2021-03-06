
<cfimport prefix="b" taglib="../../vendor/tags/bootstrap">







<div class="page-header">
	<b:row>
		<b:column span="12">	

			<b:h1>Material Colors & Helper classes</b:h1>
			<p>Classes that make it easier color code things</p>
			<!--- To quote my accountant: color coded tabed folders are the best invention ever --->
		</b:column>	
	</b:row>
</div>


<b:h1 key="Introduction" />


<b:blockquote>
	<p>Convey meaning through color with a handful of emphasis utility classes. These may also be applied to links and will darken on hover just like our default link styles.</p>

	<footer>Quote from <cite>Bootstrap documentation</cite></footer>
</b:blockquote>


<b:panel look="info" title="Tags with text attribute">

	<b:table>
	<thead>
		<tr>
			<th>Tag</th>
			<b:th text="nowrap">Default value</b:th>
			<b:th key="plugin_desc" />
		</tr>	
	</thead>
	
	<tbody>
		<tr>
			<td>h1,h2,h3,h4,h5.h6,p,blockqoute</td>
			<td>(none)</td>
			<td>Color of text</td>
		</tr>
		<tr>
			<td>tr,td,th</td>
			<td>(none)</td>
			<td>Color of text</td>
		</tr>
	</tbody>
	</b:table>
</b:panel>


<b:h1 key="examples" />



<b:p text="muted">Fusce dapibus, tellus ac cursus commodo, tortor mauris nibh.</b:p>
<b:p text="primary">Nullam id dolor id nibh ultricies vehicula ut id elit.</b:p>
<b:p text="warning">Etiam porta sem malesuada magna mollis euismod.</b:p>
<b:p text="danger">Donec ullamcorper nulla non metus auctor fringilla.</b:p>
<b:p text="success">Duis mollis, est non commodo luctus, nisi erat porttitor ligula.</b:p>
<b:p text="info">Maecenas sed diam eget risus varius blandit sit amet non magna.</b:p>


<h2>Backgrounds</h2>

<cfparam name="rc.look" default="primary">
<cfparam name="rc.content" default="Tellus ac cursus commodo, tortor mauris nibh.">


<b:well>

	<form action="?" method="post" class="form-horizontal">

		<b:formGroup>
			<label class="col-sm-3 control-label">Content to be echoed</label>
			
			<b:column span="9">
				<cfoutput>
					<textarea class="form-control" name="content" rows="5">#encodeForHTMLAttribute(rc.content)#</textarea>
				</cfoutput>
			</b:column>	
		</b:formGroup>
		

			
  		
		<b:formGroup>
			<b:column offset="3" span="9">
				<b:commandButton value="Submit" />
			</b:column>
		</b:formGroup>		
	</form>
</b:well>


<h3>Bootstrap</h3>
<p>These come built-in with Bootstrap. These tend to be low key and have names that reflect their function. On this sample site, these vary based on the theme.</p>

<b:row>
<cfloop index="styleClass" list="muted,primary,warning,danger,success">
	<b:column span="4">
		<b:blockquote styleClass="bg-#styleClass#" value="#rc.content#" footer="#styleClass#" />
	</b:column>
</cfloop>

</b:row>


<h3>Material Design</h3>
<p>This sample site also comes with material design classes. These are very bright and have names that reflect their color.
	These colors are not the same as html colors though. On this sample site, these do not vary by theme.
	Only even lighten and darken values exist. This is to encourage consistency.
</p>


<cfloop index="styleClass" list="#rc.lstcolor#">
<b:row>

	<b:column span="2">
		<b:blockquote styleClass="material-#styleClass.trim()# lighten-4" value="#rc.content#" footer="#styleClass.trim()# lighten-4" />
	</b:column>

	<b:column span="2">
		<b:blockquote styleClass="material-#styleClass.trim()# lighten-2" value="#rc.content#" footer="#styleClass.trim()# lighten-2" />
	</b:column>


	<b:column span="2">
		<b:blockquote styleClass="material-#styleClass.trim()#" value="#rc.content#" footer="#styleClass.trim()#" />
	</b:column>

	<b:column span="2">
		<b:blockquote styleClass="material-#styleClass.trim()# darken-2" value="#rc.content#" footer="#styleClass.trim()# darken-2" />
	</b:column>
	
	
	<b:column span="2">
		<b:blockquote styleClass="material-#styleClass.trim()# darken-4" value="#rc.content#" footer="#styleClass.trim()# darken-4" />
	</b:column>

</b:row>
</cfloop>







