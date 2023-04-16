// QUERY OPPORTUNITY CREATED IN LAST WEEK 
//IF OPPORTUNITY STAGE IS CLOSE WON THEN
//UPDATE DESCRIPTION AS 'OPPORTUNITY IS CLOS WON' 
//IN CASE OF CLOSE LOST UPDATE DESCRIPTION AS 'OPPORTUNITY IS CLOSE LOST'
public class Scenario3 {
public static void UpdateDiscipOpp()
{
    List<Opportunity> OppList = new List<Opportunity>();
    List<Opportunity> OppList1 = new List<Opportunity>();
     OppList = [SELECT Id,StageName,CloseDate,NAME,Description FROM Opportunity ];
    system.debug(OppList);
    if(!OppList.isEmpty())
    {
        for(Opportunity opp: OppList){
            if(opp.StageName == 'Closed Won'){
                opp.Description = 'opportunity is close won';     
          }
            else if (opp.StageName == 'Closed Lost'){
                opp.Description = 'opportunity is Close Lost';
            }
            OppList1.add(opp);
        }
    } 
    system.debug('line1'+OppList1);
    if(!OppList1.isEmpty()){
        system.debug('line2'+OppList1);
        update OppList1;
        system.debug('line3'+OppList1);
    }
}

}