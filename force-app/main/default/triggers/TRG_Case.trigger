/**
 * Created by algirdas on 2022-12-20.
 */

trigger TRG_Case on Case (before insert, before update)
{
    if (Trigger.isBefore)
    {
        if (Trigger.isInsert || Trigger.isUpdate)
        {
            TH_CurseWordCheck curseWordCheck = new TH_CurseWordCheck();
            curseWordCheck.addCases(Trigger.new);
            curseWordCheck.updateCases();
        }
    }

    if (Trigger.isBefore)
    {
        if (Trigger.isInsert)
        {

        }
    }
}
