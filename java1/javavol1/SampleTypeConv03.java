class SampleTypeConv03{
    public static void main(String[] args){
        double d = 67.345;
        float f = (float)d;
        long x = (long)d;
        int i = (int)d;
        short s = (short)d;
        byte b = (byte)d;
        char c = (char)d;

        System.out.println(f);
        System.out.println(x);
        System.out.println(i);
        System.out.println(s);
        System.out.println(b);
        System.out.println(c);
    }
}