trigger AccontTrigger on Account (After insert /*, before update , after insert,after update, After delete,before delete */) {
    if(Trigger.isInsert){
        if(Trigger.isAfter){
            //AccountTriggerhandller.accountBeforeInsert(Trigger.new);
                   }
    }
    if(Trigger.isDelete){
        if(Trigger.isBefore){
        }else if(trigger.isAfter){
                        //EmployeeRecordDeletePerformance.AccRecordDeleted(Trigger.old);
        }
    }
  
    if(Trigger.isInsert){
        if(Trigger.isBefore){        
            //AccountHandaller1.acoHadBefore(Trigger.new);
        }else if (Trigger.isAfter){
            //AccountHandaller1.onAccountOppCreat(Trigger.new);
            
        }
        
    }
    if(Trigger.isUpdate){
        if(Trigger.isBefore){        
           // AccountHandaller1.accoutDescriptionupdate(Trigger.new,Trigger.oldmap);
        }else if (Trigger.isAfter){
          // AccountHandaller1.updateRelatedPhone(Trigger.new , Trigger.oldmap);
}
    }
    if(trigger.isAfter){
        if(trigger.isUpdate){
           // AccountProductTrueFalse.checkAccountProduct(Trigger.new , trigger.oldmap);
        }
    }
    if(trigger.isAfter && trigger.isinsert){
        //ContactCreateonAccountcreate.createContactOnAcc(trigger.new);
    }
    if(trigger.isBefore && trigger.isDelete){
      //  DeleteAccountInContact.afterInsert(trigger.old);
    }
    if(trigger.isBefore && trigger.isInsert){
       // SameNamefireAccount.sameNamefireAccountError(trigger.New);
        
    }
    if(trigger.isInsert && trigger.isBefore){
            AccountTrigger_test.testAcc(trigger.new);
    }
    if(trigger.isInsert && trigger.isBefore){
           // AssingUserAnother.assingAnotherUser(trigger.new);
    }
    System.debug(trigger.new);
    }