({
	fireEvent : function(component, event, helper) {
        /*
        // For call the custom controller event ...
        console.log('Child handler ');
		var fireComponentEvent = component.getEvent("cmpEvent");
        console.log('Event : '+fireComponentEvent);
        fireComponentEvent.setParam("message","Event is fire..");
        fireComponentEvent.fire();*/
        
        // For call the custom Appplication event ...
        var fireComponentEvent = $A.get("e.c:NewEvent");
        console.log('Component Event  : '+fireComponentEvent);
        fireComponentEvent.setParam("message","Event is fire..");
        fireComponentEvent.fire();
        
	}
    ,
    clearParentMessage : function(component, event, helper){
        console.log("clearParentMessage Function");
        var parMessage = $A.get("e.c:ClearMessage");
        console.log("parMessaeg :: "+parMessage);
        parMessage.fire();
    }
})