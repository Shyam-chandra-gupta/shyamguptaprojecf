public class ListtDemo {
    public static  void demoLi()
    {
        List<Account> ListAcc = new List<Account>();
        ListAcc = [SELECT Id,Name FROM Account ];
        system.debug('account list=>'+ListAcc);
        
    }

}