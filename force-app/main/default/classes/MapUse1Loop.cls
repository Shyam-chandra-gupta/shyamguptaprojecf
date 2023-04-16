public class MapUse1Loop {
    public void  LoopUse1() 
{
        List<Account> AccList = new List<Account>();
        Set<Id> IDSList = New Set<Id>();
        AccList =[Select ID,Name From Account Limit 4];
            Map<Id,Account> MapList = New Map<Id,Account>(AccList);
       // AccList =[Select ID,Name From Account Limit 2];
        //System.debug('AccList=>' +AccList);
        if(!AccList.isEmpty()){
            for(Account Acc : AccList ){
                IDSList.Add(Acc.Id);
                //system.debug('IDSList=>'+IDSList);

            }
            if(!IDSList.isEmpty()){
                for(Id I : IDSList){
                    if(MapList.containskey(I)){
                        //system.debug('MapList=>'+);
                    }
                    system.debug('MapList=>'+MapList.Get(i));
                    
                }
            }
        }
    }
}