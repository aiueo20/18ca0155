class SampleVarArg01{
    static void foo(int... x){
        System.out.println(x.length);
        for(int e: x){
            System.out.println(e);
        }
        System.out.println("------");
    }

    static void foo(int[] a){
    }
    
    public static void main(String[] args){
        int x = 10, y = 20, z = 30;
        foo();
        foo(x);
        foo(x, y);
        foo(x, y, z);
    }
}