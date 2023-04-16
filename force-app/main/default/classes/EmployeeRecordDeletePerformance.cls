public class EmployeeRecordDeletePerformance {
    public static void empRecordDeleted(List<Employee__c> OldList){
        for(Employee__c Emp : Oldlist){
            if (Emp.Employee_Status__c == true){
                emp.adderror('Active employee can not be deleted');
            }
        }
        
    }
    public static void updateLeftEmpCountOnAcc(List<Employee__c> OldList){
        Set<Id> AccIds = new Set<Id>();
        List<Account> acctoBeupdate = new List<Account>();
        map<Id,Account> AccIdToAccMap;
        List<Employee__c> EmpList = new List<Employee__c>();
        map<id,Decimal> AccIdToTotalCount = new map<Id,Decimal>();
         
        for(Employee__c Emp : OldList){
            if(Emp.Account__c !=null){
                AccIds.Add(Emp.Account__c);
                EmpList.Add(Emp);
                
            }
        }
        if(!AccIds.isEmpty()){
            AccIdToAccMap = new map<Id,Account> ([Select Id, Left_Employee_Count__c From Account Where Id IN : AccIds]);
        }
        if(!EmpList.isEmpty()){
            for(Employee__c Emp : EmpList){
                if(AccIdToAccMap.containskey(Emp.Account__c)){
                    if(AccIdToTotalCount.containskey(Emp.Account__c)){
                        Decimal Count = AccIdToTotalCount.Get(Emp.Account__c) + 1;
                        AccIdToTotalCount.Put(Emp.Account__c,count);
                    }else{
                        AccIdToTotalCount.Put(Emp.Account__c,AccIdToAccMap.Get(Emp.Account__c).Left_Employee_Count__c + 1);
                    }
                }
            }
        }
        for(Id AccId : AccIdToTotalCount.keySet() ){
            Account Acc = new Account();
            Acc.Id = AccId;
            Acc.Left_Employee_Count__c = AccIdToTotalCount.get(AccId);
            acctoBeupdate.Add(Acc);
        }
        if(!acctoBeupdate.isEmpty()){
            update acctoBeupdate ;
        }
    }
    public static void AccRecordDeleted(List<Account> OldList){
        for(Account Ac : Oldlist){
            if (Ac.Active__c == 'yes'){
                Ac.adderror('Define in Trigger Active Account can not to be deleted');
            }}
    }}