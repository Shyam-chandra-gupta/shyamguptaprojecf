trigger AccountTrigger on Account (After update) {
  List<Account> accList = new List<Account>();
    system.debug('trigger old value >>>' + Trigger.old);
        system.debug('trigger old value >>>' + Trigger.new);
    system.debug('Trigger.newMap.KeySet()>>>>>>>'+Trigger.newMap.KeySet());
    if(trigger.isAfter && Trigger.isUpdate){
        List<Account> accList = new List<Account>();
    for(Account acc : [select id , Name from Account where Id IN: Trigger.newMap.KeySet()]){
        acc.Name=acc.Name + 'Testing';
        accList.add(acc);
    }
    update accList;   
    }

       
}