public class Allcalculator {
    public static void add()
    {
        integer a=10,b=30,c;
        c=a+b;
        system.debug('sum of integer is equal to ='+c);
    }
    public static void sub()
    {
        integer a=50,b=30,c;
        c=a-b;
        system.debug('sub of integer is equal to ='+c);
    }
    public static void multiply()
    {
        integer a=10,b=30,c;
        c=a*b;
        system.debug('multiplication of integer is equal to ='+c);
    }
    public static void divide()
    {
        decimal a=10,b=3;
        decimal c=a/b;
        system.debug('division of integer is equal to ='+c.setScale(4));
    }
    public static void modulas()
    {
        integer a=10,b=5,c;
         c = Math.mod( a, b );
        system.debug('division of integer is equal to ='+' '+c);
    }

}