public class EmployeeHandler {
    public static void employeeRelation(){
        List<Employee__c> employeeListAccount = [Select id,Account__r.Name from Employee__c];
        List<Employee__c> employeeListAccount1 = [Select id,Contact__r.Name from Employee__c];
        System.debug('employeeListAccount'+employeeListAccount);
        System.debug('employeeListAccount'+employeeListAccount1);
    }
}