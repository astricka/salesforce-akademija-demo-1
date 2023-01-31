/**
 * Created by algirdas on 2023-01-31.
 */

public with sharing class LectureUnitTest {
    @TestVisible

    public static Integer addNumbers(Integer firstNumber, Integer secondNumber) {
        Integer sum = firstNumber + secondNumber;
        return sum;
    }

    @TestVisible
    private static String addStrings(String firstString, String secondString) {
        String result = firstString + secondString;
        return result;
    }

    @TestVisible
    private List<Integer> numbers = new List<Integer>();

    public void transferNumbers(List<Integer> numbersToDecrease) {
        for (Integer num : numbersToDecrease) {
            this.numbers.add(num - 1);
        }
    }

    public static void changeContactsLastNames(List<Contact> contactsToChange, String lastName) {
        for (Contact contactToChange : contactsToChange) {
            contactToChange.LastName = lastName;
        }
    }

    List<String> curseWords = new List<String>
    {
            'rupuze',
            'javascriptas',
            'zaltyys'

    };

    public Case checkCase(Case caseToCheck)
    {
        for (String curseWord: curseWords)
        {
            Boolean containsCurseWord = caseToCheck.Description.contains(curseWord);

            if (containsCurseWord == true)
            {
                throw new CurseWordsException();
            }
        }

        return caseToCheck;
    }

}
