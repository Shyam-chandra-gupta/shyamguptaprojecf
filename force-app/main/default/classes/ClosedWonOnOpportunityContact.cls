public class ClosedWonOnOpportunityContact {
    public static void ContactPopulate(string ContactId){ 
        
        List<opportunity> OppList = new List<opportunity>();
        OppList = [select ID,StageName from opportunity where StageName= 'Closed Won'];
        integer i = OppList.size();
        Contact con = new Contact();
        con.Count__c = i;
        con.Id = ContactId;
        update con;
    }
    

}