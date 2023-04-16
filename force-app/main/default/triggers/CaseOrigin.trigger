trigger CaseOrigin on Case (before insert , After Insert) {
  if(trigger.isInsert && trigger.isBefore){
      //CaseOrgineAndpriority.chageStatusAndP(trigger.new);
            }
    if(trigger.isInsert && trigger.isAfter){
        CaseEmailTriggerHandller.CaseEmailSendSmsOwner(trigger.new);
        
    }
}