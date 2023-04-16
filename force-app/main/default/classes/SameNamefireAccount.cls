public class SameNamefireAccount {
    public static void sameNamefireAccountError(List<Account> accList ){
        Map<String,String> mpAcc = New Map<String,String>(); 
            List<Account> acoList = [Select Id , Name from Account Limit 49999];
        for(Account ac : acoList)  {
     mpAcc.put(ac.Name , ac.Name);
        }
        for(Account acc : accList){
            If(acc.Name == mpAcc.get(acc.Name)){
                Acc.AddError('Account Name Already Exist');
            }
        }
        
    }
}