//Write a trigger, when a new Account is created then create a contact related to that account.
                 
public class AccountRelatedContactCreate {
    public static void accountRelatedConCreated(List<Account> accList){
        List<Contact> conList = new List<Contact>();
        For(Account acc : accList){
            Contact createContactList = new Contact();
            createContactList.AccountId = acc.Id;
            createContactList.LastName = acc.Name;
            createContactList.Phone = acc.Phone;
            createContactList.Rating__c =acc.Rating;
            system.debug('createContactList>>>>>'+ createContactList);
            conList.add(createContactList);
            system.debug('conList>>>>>>>>>>>'+conList);
        }
        if(!conList.isEmpty()){
           insert conList;
        }
    }
             
        }