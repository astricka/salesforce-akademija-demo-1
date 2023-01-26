    /**
 * Created by algirdas on 2022-12-20.
 */

public with sharing class TH_CheckParentCase
{
    final List<Case> casesToCheck = new List<Case>;

    public void addCase(List<Case> casesToAdd)
    {
        for (Case aCase : casesToAdd)
        {
            if (aCase.Parent == null)
            {
                casesToCheck.add(aCase);
            }
            else
            {

            }
        }
    }
}
