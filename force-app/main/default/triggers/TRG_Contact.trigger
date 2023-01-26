/**
 * Created by algirdas on 2022-12-20.
 */

trigger TRG_Contact on Contact (after insert, before insert, before update)
{
    if (Trigger.isAfter)
    {
        if (Trigger.isInsert)
        {
            TH_ContactCheckExistingEmail contactEmailsExisting = new TH_ContactCheckExistingEmail();
            contactEmailsExisting.checkContactEmail();
        }
    }

    if (Trigger.isUpdate)
    {

    }
}
