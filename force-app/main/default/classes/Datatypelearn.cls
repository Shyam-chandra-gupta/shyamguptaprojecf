public class Datatypelearn {
    public void demoobject()
    {
        List<faculty__c> facList = [Select Name,Address__c,Email__c,Phone__c,Specialization__c  from faculty__c Where Id = 'a025g00000AJaEeAAL' ];
        
        System.debug(facList);
    }

}