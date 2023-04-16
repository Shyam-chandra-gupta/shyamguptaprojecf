public class AccountHandaller1 {
    Public static void acoHadBefore(list<Account> NewList){
        FOR(Account acc : NewList){ 
            if(acc.Industry != 'Null' && acc.Industry == 'media'){
                acc.Rating = 'hot';
            }
        }
        
        
    }public static void onAccountOppCreat(list<Account> NewList){
            List<Opportunity> OPPlist = new List<Opportunity>();
            for(Account acc : NewList){
                Opportunity Opp = New Opportunity();
                Opp.Name = acc.Name;
                Opp.AccountId = acc.Id;
                Opp.StageName = 'Prospecting';
                Opp.CloseDate = System.today();
                OPPlist.Add(Opp);
            }if(!OPPlist.isEmpty()){
            insert OPPlist;
        }
    }
    public static void accoutDescriptionupdate(list<Account> NewList ,Map<id,Account> OldMapIdAcc)
    {
        for(Account acc : NewList){
            if(OldMapIdAcc != null && acc.Phone !=OldMapIdAcc.get(acc.Id).phone){
                acc.Description = 'Account phone is update';
            }
        }        
        
    }
    
    public static void updateRelatedPhone(list<Account> NewList ,Map<id,Account> OldMapIdAcc)  {
        Map<Id,Account> RelateMapId = New Map<Id,Account>();
        List<opportunity> OppToBeUpdate = new List<opportunity>();
        for(Account acc : NewList){
            if(OldMapIdAcc != null && acc.Phone !=OldMapIdAcc.get(acc.Id).phone){
                RelateMapId.put(acc.Id,acc);
            }
            
        }
        for(opportunity opp : [SELECT Id ,Account_Phone__c ,AccountId FROM opportunity  WHERE AccountId IN : RelateMapId.keySet() ] ){
            opportunity oppor = new opportunity();
            if(RelateMapId.containskey(opp.AccountId)){
                oppor.Id = opp.Id;
                oppor.Account_Phone__c = RelateMapId.Get(opp.AccountId).Phone;
                OppToBeUpdate.add(oppor);
            }
        }
        if(!OppToBeUpdate.isEmpty()){
            Update OppToBeUpdate;
        }
    }

}