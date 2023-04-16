trigger ContactTrigger on Contact (After insert){ 
    if(trigger.isAfter && trigger.isInsert){
                //AfterInsertTrigger.afterInsert(trigger.new);

    }
    if (Trigger.isInsert && Trigger.isAfter){
      // ContactEmailTriggerhandller.contEmailSendSms(Trigger.new);
    }
    if(trigger.isInsert && trigger.isAfter){
        //ContactRecoPopulate.Populaterecord(trigger.new);
        
    }
            if(trigger.isInsert && trigger.isAfter){
        //CheckOnContactRelatedAccount.contactCheckRelatedAccount(trigger.new);
            }
       
}