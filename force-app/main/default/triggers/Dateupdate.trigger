trigger Dateupdate on Account (before insert) {
    if (Trigger.isBefore && Trigger.isInsert){
        //TriggerHandller.updateTheDate(Trigger.new);
    }

}