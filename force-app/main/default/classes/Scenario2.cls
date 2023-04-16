public class Scenario2 { 
    public static void phoneUpdateInAccount()
    {
        List<Account> AccList = [SELECT Id,Name,PHONE From Account WHERE CreatedDate = LAST_WEEK];
    
       if(!AccList.isEmpty()){
           for(Account Acc : Acclist){
               Acc.Phone = '1234567890';
                
            }
       }
       if(!AccList.isEmpty()){
     // AccList.name = '123456789';
           update AccList;
       }
    }

}