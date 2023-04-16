public class ContactCreateonAccountcreate {
    public static void createContactOnAcc(List<Account> accList){
        List<Contact> conList = New List<Contact>();
        for(Account aco : accList){
            if(aco.Industry == 'Banking'){
                Contact con = new Contact ();
                con.AccountId = aco.Id ;
                con.LastName = aco.Name;
                con.Phone = aco.Phone;
                con.Mobile_numaber__c = 8787878;
                conList.Add(con);
            system.debug('conList>>>.'+conList);
            }
            
        } 
        if(!conList.isEmpty()){
                insert conlist ;
            }
    }

}