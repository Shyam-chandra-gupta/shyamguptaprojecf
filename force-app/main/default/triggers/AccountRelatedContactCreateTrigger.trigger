trigger AccountRelatedContactCreateTrigger on Account (before insert) {
    
   /* if(trigger.isAfter && trigger.isinsert){
        AccountRelatedContactCreate.accountRelatedConCreated(trigger.New);
    }
    if(trigger.isAfter && trigger.isUpdate){
       // UpdateOwnerInAccountRelatedContact.updateOwnerInAccountRelatedContactOnAcc(Trigger.new , Trigger.oldmap ,trigger.newmap);
    }
    if(trigger.isInsert && trigger.isAfter){
        //AccountIsCreateOrUpdateTheCreateOpp.AccountIsCreateThenCreateOpportunity(trigger.new);
    }
    if(trigger.isAfter && trigger.isUpdate){
       //AccountIsCreateOrUpdateTheCreateOpp.AccountIsUpdateTheCreateOpportunity(Trigger.new , Trigger.oldmap);
    }
    if(trigger.isAfter && trigger.isUpdate){
       AccountBillingCityUpdateThenMailingcity.accMailingToBillinCityUpdate(Trigger.new , Trigger.oldmap);
    }*/
  /*system.debug('trigger.new>>>>>>>'+trigger.new);
    system.debug('trigger.newmap>>>>>>>'+trigger.newMap);
    system.debug('trigger.old>>>>>>>'+trigger.old);
        system.debug('trigger.oldMap>>>>>>>'+trigger.oldMap);*/

}