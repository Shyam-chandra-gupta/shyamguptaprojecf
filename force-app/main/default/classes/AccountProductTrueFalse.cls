public class AccountProductTrueFalse {
    public static boolean isOne=true;
    public static void checkAccountProduct(List<Account> ListAcc , Map<Id,Account> OldMapAcc){
        
        List<opportunity> oppList = new List<Opportunity>();
        set<Id> setofAccId = new set<Id>();
        List<Id> lstAccId = new List<Id>();
        
        for(Account Acc : ListAcc){
            system.debug('ListAcc'+ListAcc);
             system.debug('OldMapAcc'+OldMapAcc);
            if(isOne== true && Acc.Add_Product__c == true && OldMapAcc.get(Acc.Id).Add_Product__c != Acc.Add_Product__c) {
                system.debug('Acc.Add_Product__c'+Acc.Add_Product__c);
                setofAccId.add(Acc.Id);
                lstAccId.add(Acc.Id);
                isOne=false;
            }
                    system.debug('shyam'+setofAccId);

            
        }
        system.debug('setofAccId'+setofAccId);
        system.debug('lstAccId'+lstAccId);
        oppList = [select ID , Name from opportunity where AccountId IN: setofAccId];
        system.debug('oppList'+oppList);
        PriceBook2 standardBook = [Select Id from PriceBook2 where IsStandard = true];
        system.debug('standardBook'+standardBook);
        PricebookEntry entry = [SELECT Id, UnitPrice FROM PricebookEntry WHERE Pricebook2Id =:standardBook.Id limit 1];
        system.debug('entery'+ entry);
        List<OpportunityLineItem> itemList = new List<OpportunityLineItem>();        
        for(opportunity opp : oppList){
            OpportunityLineItem oppProduct = new OpportunityLineItem();
            oppProduct.PricebookEntryId = entry.Id;
            oppProduct.OpportunityId = opp.Id;
            oppProduct.UnitPrice = entry.UnitPrice;
            oppProduct.Quantity = 1;
            itemList.add(oppProduct);
            
        }
        system.debug('itemList'+itemList);
        insert itemList;
    }

}