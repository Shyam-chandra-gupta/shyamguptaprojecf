public class MapDemo {
     public void IntToStr()
    {
        Map<Integer,String> intToStr = New Map<Integer,String>();
        Map<Integer,String> intToStr1 = New Map<Integer,String>();
        List<string> Intg = New List<string>();
        
        intToStr.put(1,'Ajay');
        intToStr.put(2,'digvijay');
        intToStr.put(3,'shyam');
        intToStr.put(4,'shailendra');
        intToStr.put(5,'devbrat');
        intToStr.put(6,'naveen');
        
        //System.debug('intToStr => '+intToStr.containskey(8));
         //intToStr1 =intToStr.clone();
        //Intg = intToStr.values(); //when we want to assin a value another list of string then use 
        //intToStr.remove(1);//when we want to remove a particular array map when use this method
        //intToStr.clear();
        //System.debug('intToStr => '+intToStr1.containskey(4));
        //System.debug('intToStr => '+intToStr.size());
        //System.debug('intToStr => '+intToStr.get(5));
        //System.debug('intToStr => '+intToStr.isempty());
        System.debug('intToStr => '+intToStr.equals(intToStr1));
        //System.debug('intToStr => '+intToStr.values());
      // System.debug('intToStr => '+intToStr1);
       //System.debug('intToStr => '+intToStr.keyset());
        
    
    }

}