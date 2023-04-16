@isTest
public class EmployeeRecordDeletePerformanceTest {
@isTest
    public static void test(){
        Contact con = new Contact();
        con.LastName='TestCon';
        insert con;
        Employee__c obj = new Employee__c();
        obj.Name= 'test';
        obj.Salary__c= 200000;
        obj.Annual_Salary__c = 240000;
        obj.Contact__c= con.Id;
        obj.Employee_Status__c= true;
        obj.Phone__c = '999999999';
        insert obj;
        List<Employee__c>listOfEmp = new List<Employee__c>();
        listOfEmp.add(obj);
        EmployeeRecordDeletePerformance.empRecordDeleted(listOfEmp);
    }
}