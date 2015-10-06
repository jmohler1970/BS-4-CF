<cfimport prefix="b" taglib="../../_bootstrap">



<b:row>
<b:column span="12">
  <div class="page-header">
    <b:h1 id="container">Containers</b:h1>
  </div>
  <div class="bs-component">
    <b:jumbotron>
      <b:h1>Jumbotron</b:h1>
      <p>This is a simple hero unit, a simple jumbotron-style component for calling extra attention to featured content or information.</p>
      <p><b:commandLink look="primary" size="lg" id="nowhere">Learn more</b:commandLink></p>
    </b:jumbotron>
  </div>
</b:column>
</b:row>



<b:row>
<b:column span="12">
  <div class="page-header">
    <b:h1 id="container">Panels</b:h1>
  </div>
  
  </b:column>
</b:row>


<b:row>
	<b:column span="4">

	     <b:panel>Basic panel</b:panel>
     
		<b:panel title="Panel heading">Panel content</b:panel>
     
		<b:panel footer="Panel footer">Panel content</b:panel>
		
	</b:column>
     
     
	<b:column span="4">

		<b:panel look="primary" title="Panel primary">Basic panel</b:panel>
		
		<b:panel look="success" title="Panel success">Basic panel</b:panel>
		
		<b:panel look="warning" title="Panel warning">Basic panel</b:panel>

	</b:column>

	<b:column span="4">

		<b:panel look="danger" title="Panel danger">Basic panel</b:panel>
		
		<b:panel look="info" title="Panel info">Basic panel</b:panel>
		
	</b:column>


</b:row>


<b:row>
<b:column span="12">
  <h2>Wells</h2>
</b:column>
</b:row>

<b:row>
	<b:column span="4">

		<b:well>Look, I'm in a well!</b:well>

	</b:column>

	<b:column span="4">
	
		<b:well size="sm">Look, I'm in a small well!</b:well>
	</b:column>

	<b:column span="4">
		
		<b:well size="lg">Look, I'm in a large well!</b:well>
	</b:column>
</b:row>	


