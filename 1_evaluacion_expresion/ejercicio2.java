public class example(){
    public static void manin(String[] arg){
        int x = 10;
        int b = 10;

        //Expresión 1
        System.out.println(x++);
        /** Justificación: Primero se imprime la variable 
         * y posteriormente se hace el incremento
        */
       int x= 10;
       int b=10;

       System.out.println(++x);
       /** 
        * 
        */
       //Expresión 3
       int x=10;
       int b=10;
        boolean resultado= b++ -3 == 3 % x++;
        System.out.println(resultado);
        
        //Expresión #4
        int x=10;
        int b=10;
       double r= 30-10;
       r/= ++b + (30 % 14);
        System.out.println(r);

        // Expresión 5
         int x = 10; 
         int b= 10;
         int t= (-50 * x++ * 80) % b / 4 ;
         t*=8;
         System.out.println(t);

        // Expresión 6
        int x= 10;
        int b=10;
         int j = x++ -8 + 3 - (5 / 4) % - 3 + 8;
         b*=j;
         System.out.println(b); 

         // Expresión 7
         int x = 10;
         int b = 10;
         int f = (50/30) * ++x + 80;
         int r= b * f;
         System.out.println(r);

         // Expresión 8
         int x =10;
         int b = 10;

         boolean r = ++x % 20.2 == -x /= b % = --X;
         System.out.println(r);

    }
}