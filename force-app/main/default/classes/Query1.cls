public class Query1 {
    Public static void EMPQuery (){
        List<Employee__c> EmpList =[SELECT Id,Salary__c,Phone__c,Name,Date_of_joinig__c,Account__r.Name,Account__r.Phone  FROM Employee__c];

        system.debug('EmpList=>'+EmpList);
    }

}