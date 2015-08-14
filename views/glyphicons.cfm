
<cfimport prefix="b" taglib="../bootstrap">







<div class="page-header">
	<b:row>
		<b:column span="12">	

			<b:h1>Glyphicon Examples</b:h1>
			<p>View code for details.</p>
		</b:column>	
	</b:row>
</div>


<h2>Introduction</h2>


<ul style="font-size : 30px;">
<cfloop list="tags,book,bookmark,print,camera,flag,download,upload,inbox,repeat,trash,check" index="rc.i">
	<li><b:icon binding="i" />  <cfoutput>#rc.i#</cfoutput></li>	
</cfloop>
</ul>	

