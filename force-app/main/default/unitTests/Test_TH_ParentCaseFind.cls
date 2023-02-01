/**
 * Created by algirdas on 2023-01-31.
 */

@IsTest
private class Test_TH_ParentCaseFind {
    @IsTest
    static void test_addCases()
    {
        Contact newContact = insertTestContact();
        Case newCase = insertTestCase(newContact.Id);

        List<Case> newCases = new List<Case>();

        newCases.add(newCase);

        TH_ParentCaseFind parentCaseFinder = new TH_ParenCaseFind();

        parentCaseFinder.addCases(newCases);

    }

    private static Contact insertTestContact() {
        Contact newContact = new Contact();
        newContact.lastName = 'Smith';

        insert newContact;

        return newContact;


    }

    private static Case insertTestCase(Id contactId) {
        Case newCase = new Case();
        newCase.Id = contactId;

        insert newCase;

        return newCase;

    }
}
