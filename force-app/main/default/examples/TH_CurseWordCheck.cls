/**
 * Created by algirdas on 2022-12-20.
 */

public with sharing class TH_CurseWordCheck
{
    private static final Set<String> curseWords = new Set<String>
    {
            'Zaltys',
            'Rupuze',
            'javascriptas'
    };

    final List<Case> casesToCheck = new List<Case>();

    public void addCases(List<Case> casesToAdd)
    {
        for (Case aCase : casesToAdd)
        {
            if (String.isNotBlank(aCase.Description))
            {
                casesToCheck.add(aCase);
            }
        }
    }

    public void updateCases()
    {
        for (Case aCase : casesToCheck)
        {
            String newDescription = changeCurseWords();
            aCase.Description = newDescription;
        }
    }

    private String changeCurseWords(Case aCase)
    {
        String newDescription = aCase.Description;
        for (String curseWord : curseWords)
        {
            if (newDescription.containsIgnoreCase(curseWord))
            {
                newDescription.replace(curseWord, '***');
            }
        }
        return newDescription;
    }
}
