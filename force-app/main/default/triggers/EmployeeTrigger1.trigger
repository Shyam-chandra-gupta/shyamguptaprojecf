trigger EmployeeTrigger1 on Employee__c (after insert , before Delete , After Delete) {
    if(Trigger.isDelete){
        if(Trigger.isBefore){
                   // EmployeeRecordDeletePerformance.empRecordDeleted(Trigger.old);

        }else if(Trigger.isAfter)
        {
                   //EmployeeRecordDeletePerformance.updateLeftEmpCountOnAcc(Trigger.old);

        }
        
    }
system.debug(trigger.new);
}