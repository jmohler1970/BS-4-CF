
<cfimport prefix="b" taglib="../_bootstrap">







<div class="page-header">
	<b:row>
		<b:column span="12">	

			<b:h1>Helper Class Examples</b:h1>
			<p>text attribute</p>
		</b:column>	
	</b:row>
</div>


<b:h1 key="Introduction" />


<b:blockquote>
	<p>Convey meaning through color with a handful of emphasis utility classes. These may also be applied to links and will darken on hover just like our default link styles.</p>

	<footer>Quote from <cite>Bootstrap documentation</cite></footer>
</b:blockquote>


<b:panel look="info" title="Tags with <b:text> attribute">

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
			<td></td>
			<td>Color of text</td>
		</tr>
		<tr>
			<td>td,th</td>
			<td></td>
			<td>Color of text</td>
		</tr>
	</tbody>
	</b:table>
</b:panel>


<h2>Examples


<b:p text="muted">Fusce dapibus, tellus ac cursus commodo, tortor mauris nibh.</b:p>
<b:p text="primary">Nullam id dolor id nibh ultricies vehicula ut id elit.</b:p>
<b:p text="warning">Etiam porta sem malesuada magna mollis euismod.</b:p>
<b:p text="danger">Donec ullamcorper nulla non metus auctor fringilla.</b:p>
<b:p text="success">Duis mollis, est non commodo luctus, nisi erat porttitor ligula.</b:p>
<b:p text="info">Maecenas sed diam eget risus varius blandit sit amet non magna.</b:p>


<h2>Backgrounds</h2>



<b:p styleClass="bg-muted">Fusce dapibus, tellus ac cursus commodo, tortor mauris nibh.</b:p>
<b:p styleClass="bg-primary">Nullam id dolor id nibh ultricies vehicula ut id elit.</b:p>
<b:p styleClass="bg-warning">Etiam porta sem malesuada magna mollis euismod.</b:p>
<b:p styleClass="bg-danger">Donec ullamcorper nulla non metus auctor fringilla.</b:p>
<b:p styleClass="bg-success">Duis mollis, est non commodo luctus, nisi erat porttitor ligula.</b:p>
<b:p styleClass="bg-info">Maecenas sed diam eget risus varius blandit sit amet non magna.</b:p>