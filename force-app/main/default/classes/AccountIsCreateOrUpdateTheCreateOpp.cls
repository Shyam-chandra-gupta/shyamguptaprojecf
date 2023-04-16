public class AccountIsCreateOrUpdateTheCreateOpp {
    public static void AccountIsCreateThenCreateOpportunity(List<Account> acoList){
        List<Opportunity> oppList = new List<Opportunity>();
        for(Account acc : acoList){
            Opportunity OpportunityCreate = new Opportunity();
            if(acc.Industry == 'Agriculture'){
                OpportunityCreate.Name = acc.Name;
                OpportunityCreate.Account_Phone__c = acc.Phone;
                OpportunityCreate.AccountId = acc.Id;
                OpportunityCreate.StageName = 'Prospecting';
                OpportunityCreate.Amount = 0;
                OpportunityCreate.CloseDate = system.today() +90;
                oppList.add(OpportunityCreate);
            }
            if(!oppList.isEmpty()){
                insert oppList;
            }
        }
    }
    public static void AccountIsUpdateTheCreateOpportunity(List<Account> accList , Map<id,Account> OldMapIdAcc){
        List<Opportunity> oppList = new List<Opportunity>();
        for(Account aco : accList){
            Opportunity OpportunityCreate = new Opportunity();
            if(aco.Industry != OldMapIdAcc.get(aco.id).Industry && aco.Industry == 'Agriculture'){
                OpportunityCreate.Name = aco.Name;
                OpportunityCreate.Account_Phone__c = aco.Phone;
                OpportunityCreate.AccountId = aco.Id;
                OpportunityCreate.StageName = 'Prospecting';
                OpportunityCreate.Amount = 0;
                OpportunityCreate.CloseDate = system.today() +90;
                oppList.add(OpportunityCreate);
            }
            if(!oppList.isEmpty()){
                Update oppList;
            }
        
    }

    }}