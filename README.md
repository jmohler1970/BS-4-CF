# Bootstrap for ColdFusion


Simplifying both Bootstrap 3.3.7 and And ColdFusion


## Hold the presses!

It is Sept 2018, and the world is a different place

- ColdFusion is now ColdFusion 2018
- Bootstrap 4.1x is out. 4.2 will hopefully be out soon
- Angular, React, and VueJS are coming on strong

I look forward to having a revised approach!

## Why is this interesting?


Bootstrap's code looks like tag soup. There are way too may </div> tags in Bootstrap. ColdFusion view code looks tag soup. There are way too may </cfif> tags in ColdFusion. 
The two put together are highly unreadable and difficult to debug. This is where custom tags save the day.

BootsFaces for JSF shows the way to a cleaner approach. So what I have done is created a similar library for ColdFusion.


### Without Bootstrap for ColdFusion
```
<cfif showme>	
     <button type="button" class="btn btn-default btn-lg">
         <i class="glyphicon glyphicon-floppy-disk"></i><!-- Don't forget the whitespace here -->
         <cfoutput>#rc.savelabel#<cfoutput>
     </button>
</cfif>	
```	


### With Bootstrap for ColdFusion

```
<b:button processed="#showme#" value="#rc.savelabel#" icon="floppy-disk" size="lg" />	
```


