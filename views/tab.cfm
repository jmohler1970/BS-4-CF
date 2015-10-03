
<cfimport prefix="b" taglib="../bootstrap">



<div class="page-header">
	<b:row>
		<b:column span="12">	

			<b:h1>Tab Examples</b:h1>
			<p>b:tab and b:tabView</p>
		</b:column>	
	</b:row>
</div>




<b:h2>Introduction</b:h2>

<p>This is the container for all the tabs</p>


<b:panel look="info" title="Attributes of <b:tabView>">

	<b:table>
	<thead>
		<tr>
			<th>Attribute</th>
			<b:th text="nowrap">Default value</b:th>
			<th>Description</th>
			<th>Sanitized</th>
		</tr>	
	</thead>
	
	<tbody>
		<tr>
			<td>activeIndex</td>
			<td>1</td>
			<td>Which tab should have focus. </td>
			<td><code>isnumeric()</code> must be true</td>
		</tr>
		<tr>
			<td>id</td>
			<td>(none)</td>
			<td><a href="?view=common">See Common Features</a></td>
			<td></td>
		</tr>
		<tr>
			<td>processed</td>
			<td>true</td>
			<td><a href="?view=common">See Common Features</a></td>
			<td></td>
		</tr>
		<tr>
			<td>rendered</td>
			<td>true</td>
			<td><a href="?view=common">See Common Features</a></td>
			<td></td>
		</tr>
		<tr>
			<td>role</td>
			<td>tabpanel</td>
			<td>Pass though of HMTL <code>role=</code></div></td>
			<td><code>encodeForHTMLAttribute()</code></td>
		</tr>
		<tr>
			<td>style</td>
			<td>(none)</td>
			<td><a href="?view=common">See Common Features</a></td>
			<td></td>
		</tr>
		<tr>
			<td>styleClass</td>
			<td>(none)</td>
			<td><a href="?view=common">See Common Features</a></td>
			<td></td>
		</tr>
	</tbody>
	</b:table>
</b:panel>


<p>This is the content for each individual container</p>


<b:panel look="info" title="Attributes of <b:tab>">

	<b:table>
	<thead>
		<tr>
			<th>Attribute</th>
			<b:th text="nowrap">Default value</b:th>
			<th>Description</th>
			<th>Sanitized</th>
		</tr>	
	</thead>

	<tbody>
		<tr>
			<td>generatedContent</td>
			<td>(none)</td>
			<td>Pass through of content. this is the initial message before the content is AJAX'ed in</td>
			<td><b:label look="danger">No</b:label>  Content is assumed to be clean</td>
		</tr>
		<tr>
			<td>data-url</td>
			<td>(none)</td>
			<td>Pass through of HTML <code>data-url=</code>. This is expected to be used with AJAX</td>
			<td><b:label look="danger">No</b:label>  Content is assumed to be clean</td>
		</tr>
		<tr>
			<td>disabled</td>
			<td>false</td>
			<td>Pass through of HTML <code>disabled=</code></td>
			<td>Must evaluate to boolean</td>
		</tr>
		<tr>
			<td>id</td>
			<td>(none)</td>
			<td><a href="?view=common">See Common Features</a></td>
			<td></td>
		</tr>
		<tr>
			<td>processed</td>
			<td>true</td>
			<td><a href="?view=common">See Common Features</a></td>
			<td></td>
		</tr>
		<tr>
			<td>rendered</td>
			<td>true</td>
			<td><a href="?view=common">See Common Features</a></td>
			<td></td>
		</tr>
		<tr>
			<td>role</td>
			<td>tab</td>
			<td>Pass through of HTML <code>role=</code></td>
			<td><code>encodeForHTMLAttribute()</code></td>
		</tr>
		<tr>
			<td>style</td>
			<td>(none)</td>
			<td><a href="?view=common">See Common Features</a></td>
			<td></td>
		</tr>

		<tr>
			<td>title</td>
			<td>(none)</td>
			<td>Content on tab. This is not a tooltip</td>
			<td><code>encodeForHTML()</code></td>
		</tr>
		
	</tbody>
	</b:table>
</b:panel>



<h2>Examples</h2>

<h3>Inline content</h3>

<b:tabView>
	<b:tab title="Home" id="home">
		<p><b>Home</b> Raw denim you probably haven't heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.</p>
	</b:tab>


	<b:tab title="Profile" id="profile">
		<p><b>Profile</b> Food truck fixie locavore, accusamus mcsweeney's marfa nulla single-origin coffee squid. Exercitation +1 labore velit, blog sartorial PBR leggings next level wes anderson artisan four loko farm-to-table craft beer twee. Qui photo booth letterpress, commodo enim craft beer mlkshk aliquip jean shorts ullamco ad vinyl cillum PBR. Homo nostrud organic, assumenda labore aesthetic magna delectus mollit.</p>
	</b:tab>

	<b:tab title="disabled" id="disabled" disabled="true">
		<p>Etsy mixtape wayfarers, ethical wes anderson tofu before they sold out mcsweeney's organic lomo retro fanny pack lo-fi farm-to-table readymade. Messenger bag gentrify pitchfork tattooed craft beer, iphone skateboard locavore carles etsy salvia banksy hoodie helvetica. DIY synth PBR banksy irony. Leggings gentrify squid 8-bit cred pitchfork.</p>
	</b:tab>
  
	<b:tab title="Action" id="action">
		<p><b>Action</b> Trust fund seitan letterpress, keytar raw denim keffiyeh etsy art party before they sold out master cleanse gluten-free squid scenester freegan cosby sweater. Fanny pack portland seitan DIY, art party locavore wolf cliche high life echo park Austin. Cred vinyl keffiyeh DIY salvia PBR, banh mi before they sold out farm-to-table VHS viral locavore cosby sweater.</p>
	</b:tab>
</b:tabView>



<h3>AJAX supplied content</h3>

<p>Profile is supposed to be the active tab</p>


<b:tabView activeIndex="2">
	<b:tab title="Home" 	id="home2"	data-url="ajax/home.html" />
	<b:tab title="Profile" 	id="profile2"	data-url="ajax/profile.html" />
	<b:tab title="Disabled" 	id="disabled2"	data-url="ajax/home.html" disabled="true" />
	<b:tab title="Action" 	id="action2"	data-url="ajax/action.html" />
</b:tabView>



<h3>Tabs and pulldown menu mixed</h3>



<b:tabView>
	<b:tab title="Home" id="home3">
		<p><b>Home</b> Raw denim you probably haven't heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.</p>
	</b:tab>


	<b:tab title="Profile" id="profile3">
		<p><b>Profile</b> Food truck fixie locavore, accusamus mcsweeney's marfa nulla single-origin coffee squid. Exercitation +1 labore velit, blog sartorial PBR leggings next level wes anderson artisan four loko farm-to-table craft beer twee. Qui photo booth letterpress, commodo enim craft beer mlkshk aliquip jean shorts ullamco ad vinyl cillum PBR. Homo nostrud organic, assumenda labore aesthetic magna delectus mollit.</p>
	</b:tab>

	<b:tab id="mixtape3">
		<p>Etsy mixtape wayfarers, ethical wes anderson tofu before they sold out mcsweeney's organic lomo retro fanny pack lo-fi farm-to-table readymade. Messenger bag gentrify pitchfork tattooed craft beer, iphone skateboard locavore carles etsy salvia banksy hoodie helvetica. DIY synth PBR banksy irony. Leggings gentrify squid 8-bit cred pitchfork.</p>
	</b:tab>
  
	<b:tab id="action3">
		<p><b>Action</b> Trust fund seitan letterpress, keytar raw denim keffiyeh etsy art party before they sold out master cleanse gluten-free squid scenester freegan cosby sweater. Fanny pack portland seitan DIY, art party locavore wolf cliche high life echo park Austin. Cred vinyl keffiyeh DIY salvia PBR, banh mi before they sold out farm-to-table VHS viral locavore cosby sweater.</p>
	</b:tab>
	
	<b:dropButton value="Dropdown" look="tab">
		<b:navLink href="##mixtape3" value="Mix tape" />
		<b:navLink href="##action3" value="Action" />
		<b:navLink />
		<b:navLink href="##" value="Something else here" />
	</b:dropButton>	
	
</b:tabView>
