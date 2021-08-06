public class ValidateDeployment {

    public static List<Contact> checkForContacts(String accId) {
        List<Contact> listCon = [Select Id,Name from Contact where AccountId = :accId];
        return listCon;//test
    }
}