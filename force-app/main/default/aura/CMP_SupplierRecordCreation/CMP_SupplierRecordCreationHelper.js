/**
 * Created by algirdas on 2023-01-17.
 */

({
    showToast : function(component, event, state, message) {
        var toastEvent = $A.get("e.force:showToast");
        toastEvent.setParams({
            "state": state,
            "message": message
        });
        toastEvent.fire();
    }
});
