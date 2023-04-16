public class TriggerHandller {
    public static void updateTheDate(List<Account> accList){
        for(Account acc : accList){
           if(acc.Name == 'Test' && acc.Active__c == 'yes'){
                acc.SLAExpirationDate__c = system.today();
            }else{
                acc.SLAExpirationDate__c = system.today() + 9;
            }
        }
        
    }

}