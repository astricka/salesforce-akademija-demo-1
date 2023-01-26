/**
 * Created by algirdas on 2023-01-19.
 */

public with sharing class DAL_ApexInLwc
{
    @AuraEnabled
    public static List<Contact> getContacts(String id)
    {
        return [SELECT Id, LastName, FirstName FROM Contact WHERE Id = :id];
    }
}
