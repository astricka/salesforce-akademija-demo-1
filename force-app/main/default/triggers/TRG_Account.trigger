/**
 * Created by algirdas on 2022-12-20.
 */

trigger TRG_Account on Account (before insert, before delete, after insert)
{
    if (Trigger.isAfter)
    {
        if (Trigger.isInsert)
        {
            TH_AccountNewOpportunity accountNewOpportunity = new TH_AccountNewOpportunity();
            accountNewOpportunity.addAccounts(Trigger.new);
            accountNewOpportunity.createOpportunities();
        }
    }

    if (Trigger.isBefore)
    {
        if (Trigger.isDelete)
        {
            TH_AccountOpportunitiesCheck accountOpportunitiesCheck = new TH_AccountOpportunitiesCheck();
            accountOpportunitiesCheck.addAccounts(Trigger.old);
            accountOpportunitiesCheck.checkAccounts();
        }
    }
}

