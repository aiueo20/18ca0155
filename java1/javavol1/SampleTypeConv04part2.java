class SampleTypeConv04{
    public static void main(String[] args){
        byte b1 = 65;


        char c = (char)b1;
        byte b2 = c;

        System.out.println(c + ":" + b2);
    }
}