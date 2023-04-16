trigger opportunitytrig on Opportunity (After insert /*after update*/) {
    if(Trigger.isAfter ){
        if(Trigger.isInsert && trigger.isupdate){
          // AccRatingChange.changeRating(Trigger.new);
          //OpportunityUpdateDate.CreateDate(trigger.new);
          
        }
    }
system.debug(trigger.new);
}