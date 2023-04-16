public class Scenario1 { // QUERY ACCOUNT RECORD CREATE THIS YEAR AND NOW INSERT ONE OPPORTUNITY RECORD FOR EACH ACCOUNT
    Public static void OpportunityToAccount()
    {
        List<Account> AccList = [SELECT Id,Name,PHONE From Account WHERE CreatedDate = THIS_YEAR];
        //System.debug('AccList =>'+AccList);
        List<opportunity> OppList = New List<opportunity>(); 
        if(AccList.Size()>0){
            for(Account Acc : AccList){
                opportunity opp = new opportunity();
                opp.Name = 'Mr.'+Acc.Name;
                opp.CloseDate = System.today();
                opp.StageName = 'Prospecting' ;
                opp.AccountId = Acc.Id;
                OppList.add(opp);
            }
        }
        if(OppList.size() > 0){
            insert OppList;
        }
        
    }

}