class SampleTypeConv07{
    public static void main(String[] args){
        // double d = 3.2;
        // int i = 5;
        // double a;


        // a = d * i;

        // System.out.println(a);

        char c = 'A';
        for(int i = 0; i < 100; i++){
            System.out.println((char)(c + i) + ":" + (c + i));
            //System.out.println((char)(c + 1) + ":" + (c + 0));
            //System.out.println((char)(c + 2) + ":" + (c + 0));
        }
    }
}