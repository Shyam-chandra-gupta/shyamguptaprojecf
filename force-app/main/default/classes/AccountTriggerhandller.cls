public class AccountTriggerhandller {
    public static void accountBeforeInsert(List<Account> newList){
        for(Account acc : newList){
            acc.Description = 'Test Description';
        }
        
    }
}