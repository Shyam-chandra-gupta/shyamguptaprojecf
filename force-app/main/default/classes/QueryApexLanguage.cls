public class QueryApexLanguage {
    public static void queryContact (){
        list<Account> updatelist = new list<Account>();
        list<Account> Conttlist = [select id,name,(select id,Name,LastName,MobilePhone from Contacts) from Account where id = '0015g00000qtU8yAAE' limit 1 ];
           system.debug(Conttlist);
        for(Account Contt:Conttlist){
            system.debug(Contt.Contacts);
            
            
        }
      /*  for(Contact Contt:Conttlist){
            system.debug(Contt.Account.Name);
            
            Contt.FirstName = ' ';
             Contt.LastName = 'shailendra';
           system.debug(Contt.Name+'Shyam'+Contt.LastName+'Gupta');
            updatelist.add(Contt);
        }
        update updatelist;
        /*list<Contact> insertlist = new list<Contact>();
        for(integer i=0; i<5;i++)
        {
        Contact con = new contact();
        con.LastName = 'Test'+i;
        con.FirstName = 'yes1'+i;
        insertlist.add(con);
        system.debug(insertlist);
        }
        
       insert insertlist;*/
    }

}