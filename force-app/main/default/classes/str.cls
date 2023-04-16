public class str {
    public static void ssss (){
        
        String myString1 = 'This Is MyString Example';
        String stringToRemove = 'MyString Example';
        String result = myString1.remove(stringToRemove);
        System.debug('Value of Result will be This Is Example as we have removed the MyString Result is'+result);
        String [] arrayOfProducts = new List<String>();

//Adding elements in Array
arrayOfProducts.add('HCL');
arrayOfProducts.add('H2SO4');
arrayOfProducts.add('NACL');
arrayOfProducts.add('H2O');
arrayOfProducts.add('N2');
arrayOfProducts.add('U296');

for (Integer i = 0; i<arrayOfProducts.size(); i++) {
   //This loop will print all the elements in array
   system.debug('Values In Array: '+arrayOfProducts[i]);
}
    }

}