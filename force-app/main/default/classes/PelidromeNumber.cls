public class PelidromeNumber{
public static void pelidromeNumberCheck(integer i){
integer Check = i ;
integer l;
integer sum = 0 ;
while(i>0){
l = math.mod(i,10);
sum = (sum*10)+l ;
i = i/10 ;
if(sum == check){
system.debug('number is pelidrome');

}else{
system.debug('number is not pelidrome');
}
}
}
}