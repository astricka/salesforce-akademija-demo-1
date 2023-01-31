
public with sharing class AccountCreator implements INT_SObjectInterface
{
    public Account getNewSObject() {
        Account newAccount = new Account();
        return newAccount;
    }
}
