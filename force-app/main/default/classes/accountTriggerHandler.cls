public class accountTriggerHandler {
    public static void SayHello(List<Account> newAccounts){
        date dt = system.today();
    integer  idt = dt.day();
        for(account newAccount: newAccounts){
            newAccount.Name = 'Hello Test Account' +' '+ idt;
        }

    }
}
