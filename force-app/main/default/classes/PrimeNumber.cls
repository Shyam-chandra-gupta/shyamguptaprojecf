public class PrimeNumber {
    Public static Void Prime(integer k){
        List<Integer> IntList = New List<Integer>();
        List<Integer> pIntList = New List<Integer>();
        integer num=0;
        integer i=1 ;
       integer j =0;
        integer f =0;
        while( i <= k) 
        { 
  //system.debug('here' + i);
      integer counter=0;
      for (num = i; num >= 1; num--)
      {
       if(math.mod(i,num)==0)
        {
            counter=counter+1;
        }
      }
      //j++;
    if (counter == 2)
    {
        IntList.add(i);
        //system.debug('Prime number is this==>>>'+ i);
        j++;
    }else{
        pIntList.add(i);
        //system.debug('Number is Not prime ==>>>'+ i);
        f++;
    }
   i++;     
}
        system.debug('Prime number is this==>>>'+IntList);
        system.debug('Number is Not prime ==>>>'+pIntList);
        system.debug('Total Prime no is===>>>'+j);
        system.debug('Total Prime not prime no under this number===>>>'+f);
}
    
    }