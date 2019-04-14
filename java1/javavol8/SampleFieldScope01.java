class SampleFieldScope01{
    static int x = 10;

    static void foo(){
        int x = 20;
        System.out.println(x);
    }

    public static void main(String[] args){
        foo();
        System.out.println(x);
    }
}