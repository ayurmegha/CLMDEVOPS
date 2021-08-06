@isTest
public class ValidateDeploymentTest {

    @isTest
    static void testCheckForContacts() {
        Test.startTest();
        Account acc = new Account();
        acc.Name = 'Test Account';
        acc.Phone = '9876543210';
        insert acc;
        
        Contact con = new Contact();
        con.FirstName = 'Test';
        con.LastName = 'Contact';
        con.AccountId = acc.Id;
        insert con;
        
        List<Contact> listCon = ValidateDeployment.checkForContacts(acc.Id);
        System.assertEquals(1, listCon.size());
        Test.stopTest();
    }
}