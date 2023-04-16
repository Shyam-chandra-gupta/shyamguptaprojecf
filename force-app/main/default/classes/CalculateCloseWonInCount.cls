public class CalculateCloseWonInCount {
    public static void count(string ContactId){
        List<Opportunity> listOP = New List<Opportunity>();
        listOP =[select Id,StageName from Opportunity where Type = 'New Customer'];
         integer k = listOP.size();
        contact con = new contact();
        con.Count__c = k;
        con.Id = ContactId;
        update con;
            }
          }