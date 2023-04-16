public class ListDemo0 {
    public static void ListMethod0 ()
    {
        List<String> strList = New List<String>();
        List<String> strList2 = New List<String>();
        Set<String> strSet = New Set<String>();
        boolean res;
        strList.Add('shyam1');
        strList.Add('shyam2');
        strList.Add(1,'shyam3');
        strList2.Add('shailendra');
        strList.addAll(strList2);
        strSet.add('japan');
        strSet.add('india');
        strSet.add('china');
        strList.addAll(strSet);
       System.debug('strList2    ='+strList2);
        System.debug('strList   = '+strList);
       strList.clear();
        System.debug('strList   = '+strList);
        strList2 = strList.clone();
        System.debug('strList   = '+strList);
        System.debug('strList2    ='+strList2);
        res = strList.contains('shailendr');
        System.debug('result    ='+res);
        

    }

}