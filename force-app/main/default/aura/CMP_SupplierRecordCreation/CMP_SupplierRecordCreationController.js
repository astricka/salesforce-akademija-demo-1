/**
 * Created by algirdas on 2023-01-17.
 */

({
    handleSuccess:function (component, event, helper) {
        helper.showToast(component, event, helper);
        console.log('Hello world');
    },

    handleCreateSupplier:function (component, event, helper) {
        let action =  component.get('c.insertSupplier');
        let newContact = component.get('v.newSupplier');
        newContact.AccountId = component.get('v.recordId');
        action.setParams({
            "aSupplier" : component.get('v.newSupplier')
        });
        action.setCallback(this, function (response){
           let state = response.getState();
           if (state === 'SUCCESS'){
               console.log('Success' + state);
           } else if (state === 'ERROR'){
               console.log('very bad error' + state);
           } else {
               console.log('Unknown error' + state);
           }
        });
        $A.enqueueAction(action);
    }
});

