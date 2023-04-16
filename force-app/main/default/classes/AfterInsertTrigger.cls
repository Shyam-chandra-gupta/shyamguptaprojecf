public class AfterInsertTrigger {
    public static void afterInsert(List<Contact> lstOfContact){
        Set<Id> setOfAccountId = new Set<Id>();
        Set<Id> setOfContactId = new Set<Id>();
        string mo ;
        List<Account> acList = new List<Account>();
        List<Contact> cnList = new List<Contact>();
        for(Contact objCon : lstOfContact){
            setOfAccountId.add(objCon.AccountId);
            setOfContactId.add(objCon.Id);
            }
        
        acList = [select Id ,Name ,Phone from Account where Id IN: setOfAccountId];
        for (Account ac : acList ){
            mo = ac.Phone;
        }
        List<Contact> listOfInsertedContact = [Select Id,Name,Phone from contact where id IN:setOfContactId];
       for(Contact conn : listOfInsertedContact){
            conn.Phone = mo;
            cnList.add(conn);
        }
        if(!cnList.isEmpty()){
            update cnList;
        }
        
    }
}