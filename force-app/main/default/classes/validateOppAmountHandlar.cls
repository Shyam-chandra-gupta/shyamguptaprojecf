public class validateOppAmountHandlar {
    
   public static void validateOnInsert(List<opportunity> oppList){
       Decimal sumOfAmount ;
      List<opportunity> allOpp = [Select id,Amount__c from opportunity Where CreatedDate = Today];
       for(opportunity op : allOpp){
           sumOfAmount = op.Amount__c;
       }
       for(Opportunity opp: opplist){
           
            if(opp.Amount__c + sumOfAmount > 500000){
                opp.Adderror('Amount can not be greter than 5 lack');
                
                
            }
        }
        
   }
    
    

}