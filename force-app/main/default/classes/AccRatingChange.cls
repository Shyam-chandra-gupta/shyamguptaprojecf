public class AccRatingChange {
    public static void changeRating(List<Opportunity> oppList){
        Id ids ;
        List<Account> atcList = new List<Account>();
        List<Account> acList = new List<Account>();
        List<Account> accounts = new List<Account>();
        for(Opportunity op : oppList){
            ids = op.AccountId;
                    system.debug('ids>>>>>'+ids);
        }
        acList = [Select Id ,Rating from Account Where Id =: ids];
        system.debug('acList>>>>>'+acList);
            for(Account acc : acList) {
                for(opportunity opp : oppList){
                    if(opp.StageName == 'Closed Won'){
                    acc.Rating = 'Hot';
                        atcList.add(acc);
            }
                }
            }      
        
        if(!atcList.isEmpty()){
            update atcList ;
        }
    }
}