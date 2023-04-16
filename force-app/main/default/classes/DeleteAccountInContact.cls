public class DeleteAccountInContact {
public static void afterInsert(List<Account> lstOfAccount){
    system.debug('lstOfAccount>>>>>'+lstOfAccount);
        Set<Id> setOfAccountId = new Set<Id>();
        for(Account objAco : lstOfAccount){
            setOfAccountId.add(objAco.Id);
            }
    system.debug('setOfAccountId>>>>>'+setOfAccountId);
        List<Contact> listOfInsertedContact = [Select Id,Name,Phone from contact where AccountId IN:setOfAccountId];
       system.debug('listOfInsertedContact>>>>>'+listOfInsertedContact);
           if(!listOfInsertedContact.isEmpty()){
               for(Account ccc : lstOfAccount){
                   ccc.adderror('Account can not delete');
               }
            
       

        }
                
    }
}