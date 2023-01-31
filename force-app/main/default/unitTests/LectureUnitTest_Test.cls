/**
 * Created by algirdas on 2023-01-31.
 */

@IsTest
private class LectureUnitTest_Test {

    @TestSetup static void testSetup() {
        Account newAccount = new Account(Name = 'TestAccount1');
        insert newAccount;

        Contact newContact = new Contact(LastName = 'TestContact1', AccountId = newAccount.Id);
        insert newContact;
    }

    @IsTest
    static void test_testSetup() {
        List<Account> accounts = [SELECT Id, Name FROM Account];
        List<Contact> contacts = [SELECT Id, AccountId, LastName FROM Contact];

        System.debug(accounts);
        System.debug(contacts);
    }

    @IsTest
    static void test_addNumbers() {

        Test.startTest();
        Integer result = LectureUnitTest.addNumbers(1, 1);
        Test.stopTest();

        System.assertEquals(2, result);
    }

    @IsTest
    static void test_addStrings() {
        String result = LectureUnitTest.addStrings('Hello', 'World');

        System.assertEquals('HelloWorld', result);
    }

    @IsTest
    static void test_transferNumbers() {
        List<Integer> integerList = new List<Integer>();
        integerList.add(1);
        integerList.add(2);
        integerList.add(3);

        LectureUnitTest testLecture = new LectureUnitTest();
        testLecture.transferNumbers(integerList);

        System.assertEquals(0, testLecture.numbers.get(0));
        System.assertEquals(1, testLecture.numbers.get(1));
        System.assertEquals(2, testLecture.numbers.get(2));
    }

    @IsTest
    static void test_changeContactsLastNames()
    {
        String lastNameToSet = 'testLastName';
        List<Contact> contactsToChange = new List<Contact>();
        contactsToChange.add(new Contact());
        contactsToChange.add(new Contact());
        contactsToChange.add(new Contact());
        System.debug('Before:');
        System.debug(contactsToChange);


        LectureUnitTest.changeContactsLastNames(contactsToChange, lastNameToSet);
        System.debug('After:');
        System.debug(contactsToChange);
        for (Contact resultContact : contactsToChange)
        {
            System.assertEquals(lastNameToSet, resultContact.LastName);
        }
    }

    @IsTest
    static void test_checkCase_containsCurseWord()
    {
        Case caseToCheck = new Case();
        caseToCheck.Description = 'oi tu rupuze';

        LectureUnitTest lectureUnitTest = new LectureUnitTest();

        Boolean exceptionThrown = false;
        try
        {
            lectureUnitTest.checkCase(caseToCheck);

        }
        catch (CurseWordsException e)
        {
            exceptionThrown = true;
        }

        System.assert(exceptionThrown);
    }

//    @IsTest
//    static void test_checkCase_doesNotContainCurseWord()
//    {
//        Case caseToCheck = new Case();
//        caseToCheck.Description = 'geras';
//    }
}
