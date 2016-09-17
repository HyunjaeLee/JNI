/**
 * Created by Hyunjae on 9/17/16.
 */
public class Hello {

    native public static void print();

    static {
        System.loadLibrary("Hello");
    }

    public static void main(String[] args) {
        Hello.print();
    }

}
