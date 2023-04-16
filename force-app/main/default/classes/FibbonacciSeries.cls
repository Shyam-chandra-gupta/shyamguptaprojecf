public class FibbonacciSeries {
    public static void Fibbonacci(integer l){
        Integer i = 0 ;
        Integer j = 1 ;
        integer f ;
        system.debug(i);
        system.debug(j);
        for(integer k=0; k<=l; K++){
            f = i+j;
            system.debug(f);
            i=j;
            j=f;
        }
    }
}