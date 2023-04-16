//Write a trigger, if the owner of an account is changed then the owner for the related contacts should also be updated.

      //(this can happen if a user leaves a company, then it is required to update the owner field for all the accounts and contacts he/she owns)


public class UpdateOwnerInAccountRelatedContact {
    /*public static void updateOwnerInAccountRelatedContactOnAcc(List<Account> accList ,map<Id,Account> oldacounts){
        List<Id> accountIds = new List<Id>();
        for(Account acc : accList){
          //  if(acc.OwnerId != oldacounts.get(acc.Id).OwnerId) {
                accountIds.add(acc.Id);
            }
            if(!accountIds.size() != 0){
                List<Contact> conList = [SELECT Id , OwnerId ,AccountId FROM contact where AccountId IN: accountIds ];
                for(Contact con : conList){
                    con.OwnerId = acounts.get(con.AccountId).OwnerId;
                }
                update conList;
                                      
                
            }
            
        }
        
        
    }*/

}