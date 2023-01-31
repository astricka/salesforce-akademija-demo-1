/**
 * Created by algirdas on 2023-01-17.
 */

public with sharing class CTRL_SupplierCreation
{
    @AuraEnabled(Cacheable=true)
    public static Opportunity insertContact(Opportunity aSupplier) {
        insert aSupplier;
        return aSupplier;
    }
}
