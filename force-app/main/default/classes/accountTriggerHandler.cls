public class accountTriggerHandler {
    public static void SayHello(List<Account> newAccounts){
        for(account newAccount: newAccounts){
            newAccount.Name = 'Hello Test Account';
        }

    }
}
