# BS-4-CF
Bootstrap tags for Adobe ColdFusion


Simplify Bootstrap and ColdFusion


# Why is this interesting?


Bootstrap's code looks like tag soup. There are way too may </div> tags in Bootstrap. ColdFusion view code looks tag soup. There are way too may </cfif> tags in ColdFusion. 
The two put together are highly unreadable and difficult to debug. This is where custom tags save the day.

BootsFaces for JSF shows the way to a cleaner approach. So what I have done is created a similar library for ColdFusion.


# Without BS-4-CF
&lt;cfif showme&gt;	
     &lt;button type=&quot;button&quot; class=&quot;btn btn-default&quot;&gt;&lt;i class=&quot;glyphicon glyphicon-floppy-disk&gt;&lt;/i&gt;&lt;cfoutput&gt;#rc.savelabel#&lt;cfoutput&gt;&lt;/button&gt;
&lt;/cfif&gt;	
	


# With BS-4-CF

&lt;b:button rendered=&quot;#showme#&quot; binding=&quot;savelabel&quot; icon=&quot;floppy-disk /&gt;	





