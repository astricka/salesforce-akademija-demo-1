/**
 * Created by algirdas on 2022-12-15.
 */

public with sharing class ContactCreator implements INT_SObjectInterface{

    public Contact getNewSObject() {
        Contact newContact = new Contact();
        return newContact;
    }
}
