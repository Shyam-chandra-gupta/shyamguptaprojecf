public class ContactRecoPopulate {
public static void Populaterecord(List<contact> conList)
{
    Map<Id,Contact> mapOfContact = new Map<Id,Contact>();
    for(Contact con: conList){
      mapOfContact.put(con.accountId,con);
    }
    System.debug('mapOfContact'+mapOfContact);
    List<Account> updateAccount = new List<Account>();
    List<Account> lstAccount = [Select Id,contact__c from Account where Id In: mapOfContact.keySet() ORDER BY CreatedDate ASC];
     System.debug('lstAccount'+lstAccount);
    for(Account acc: lstAccount){
        acc.contact__c = mapOfContact.get(acc.Id).Id;
        updateAccount.add(acc);
    }
    System.debug('updateAccount'+updateAccount);
    if(updateAccount.size()>0){
        update updateAccount;
    }
}
}