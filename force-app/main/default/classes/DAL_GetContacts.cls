/**
 * Created by algirdas on 2023-01-19.
 */

public with sharing class DAL_GetContacts {
    @AuraEnabled
    public static List<Contact> getContacts(String name) {

        return [SELECT Id, FirstName, LastName FROM Contact WHERE FirstName = :name LIMIT 10];
    }
}
