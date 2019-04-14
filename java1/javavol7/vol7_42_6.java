class vol7_42_6{
    static int bar(int x){
        System.out.println(2 + x);
        return x;
    }

    static int foo(){
        int x = 1;
        int y;
        y = bar(x++);
        return y;
    }

    public static void main(String[] args){
        System.out.println(foo() + bar(1));
    }
}