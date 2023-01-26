/**
 * Created by algirdas on 2022-12-20.
 */

public with sharing class TH_ContactCheckExistingEmail
{
    List<Contact> contactsToCheck = new List<Contact>;

    public void checkContactEmail()
    {
        for (Contact contactToCheck : contactsToCheck)
        {
            if (String.isNotBlank(contactToCheck.Email))
            {
                contactToCheck.addError('Contact already exists');
            }
            else
            {
                contactsToCheck.add(contactToCheck);
            }
        }
    }
}
