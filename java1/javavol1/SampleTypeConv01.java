class SampleTypeConv01{
    public static void main(String[] args){
        byte b = 127;
        short s = b;
        int i = b;
        long x = b;
        float f = b;
        double d = b;

        System.out.println(s);
        System.out.println(i);
        System.out.println(x);
        System.out.println(f);
        System.out.println(d);
    }
}