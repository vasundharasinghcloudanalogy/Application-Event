({
	handleComponentEvent : function(component, event, helper) {
        console.log("Parent Handler..");
		var childMessage = event.getParam("message");
        console.log('Child Message : '+childMessage);
        component.set("v.childMessage",childMessage);
	},
    
    clearMessage : function(component, event, helper){
        var parMessage = component.get("v.childMessage");
        console.log("Parent Messsge : "+parMessage);
        component.set("v.childMessage","");
    }
})