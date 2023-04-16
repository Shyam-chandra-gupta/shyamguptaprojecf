public class OpportunityUpdateDate {
    public static void CreateDate(List<Opportunity> oppList){
        for(Opportunity op : oppList){
            if(op.StageName == 'Closed Won'){
                op.CloseDate = system.today();
                op.Type= 'New Customer';
            }
        }
    }

}