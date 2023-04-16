public class DemoSobject {
    public void Sobj1(){
        List<Account> AccList = New List<Account>();
        Set<String> Ids = New Set<String>();
        AccList = [Select Phone,Id,Name From Account Limit 2];
        //System.debug('AccList=>'+AccList);
        if(!AccList.isEmpty())
        { 
            
             for(Account Acc : AccList){
          //Ids.Add(Acc.Id) ; 
                 Ids.Add(Acc.Name) ; }
            System.debug('Ids=>'+Ids);
        }
    
        //for(Account Acc : AccList){
          //Ids.Add(Acc.Id) ; 
            //Ids.Add(Acc.Name) ; 
        //}
    //System.debug('Ids=>'+Ids);
    }

}