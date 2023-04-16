public class AccountBillingCityUpdateThenMailingcity {
    public static void accMailingToBillinCityUpdate(List<Account> accList , Map<Id , Account> oldMapAccount){
        List<Account> acoList = new List<Account>();
        String value;
        Set<Id> idsAccount = new Set<Id>();
        for(Account acc : accList){
            if(acc.BillingCity != oldMapAccount.get(acc.Id).BillingCity){
                idsAccount.Add(acc.Id);
                value = acc.BillingCity;
            }
        }
        List<Contact> conList = [Select Id ,MailingCity ,AccountId  From Contact Where AccountId IN : idsAccount ];
        List<contact> ccList = New List<Contact>();
        System.debug('conList>>>>>>>>>>'+conList);
            for(Contact con : conList){
                con.MailingCity = value;
                ccList.add(con);
            }
        update ccList;
      }
}