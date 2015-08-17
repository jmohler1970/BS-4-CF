# BS-4-CF
Bootstrap tags for Adobe ColdFusion


Simplify Bootstrap and ColdFusion


# Why is this interesting?


Bootstrap's code looks like tag soup. There are way too may </div> tags in Bootstrap. ColdFusion view code looks tag soup. There are way too may </cfif> tags in ColdFusion. 
The two put together are highly unreadable and difficult to debug. This is where custom tags save the day.

BootsFaces for JSF shows the way to a cleaner approach. So what I have done is created a similar library for ColdFusion.


### Without BS-4-CF
```
<cfif showme>	
     <button type="button" class="btn btn-default"><i class="glyphicon glyphicon-floppy-disk></i><cfoutput>#rc.savelabel#<cfoutput></button>
</cfif>	
```	


### With BS-4-CF

```
<b:button rendered="#showme#" binding="savelabel" icon="floppy-disk />	
```


