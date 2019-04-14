class SampleArg01{
    static byte piyo(){
        byte b1 = 1, b2 = 2;
        return b1 + b2;
    }

    static void meth(int x){
        System.out.println(x);
    }

    static void foo(double x, double y){
        System.out.println(x + ":" + y);
    }
    //mainÉÅÉ\ÉbÉh
    public static void main(String[] args){
        byte b = 10;
        meth(b);

        short s = 54;
        meth(s);

        int i = 400;
        meth(i);

        char c = 'A';
        meth(c);

        long x = 10;
        meth((int)x);

        byte b1 = 1, b2 = 2;
        foo(b1, b2);
        int a = 10;
        double d = 20;
        foo(a, d);
    }
}