@isTest
private class accounttriggerhandlerTest {

    @isTest
    private static void testTestCase() {
       
        Test.startTest();
        insert new Account(Name='Differrent');
        Test.stopTest();
Account newAccount =[select id,name from account limit 1];
        // Asserts
        System.assert(newAccount.Name == 'Hello Test Account');
    }

}
