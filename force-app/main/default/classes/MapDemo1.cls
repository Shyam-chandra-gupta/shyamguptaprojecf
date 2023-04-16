public class MapDemo1 {
    public void IdAccounT1()
    {
        Map<Id,Account> ACCvalue = New Map<Id,Account>([Select Id,Name From Account]);
        System.debug(ACCvalue);
    }
}