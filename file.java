import javax.naming.spi.DirStateFactory.Result;

public class File {
    static boolean par (int n) {
        // boolean resultado = false;
        if (n % 2 == 0) 
            return true;
        else
            return false;
            // resultado = true;
    }

    static int factorial(int n) {
        if (n == 0) 
            return 1;
        else
            return factorial(n-1) * n;
    }

    static int fib(int n) {
        if (n == 0) 
            return 1;
        else if (n == 1) 
            return 1;
        else
            return fib(n-1) + fib(n-2);
    }



    public static void main(String[] args) {
    	System.out.println(2);
    }
}