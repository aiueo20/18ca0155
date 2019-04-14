class Test2{
    static int[] a;

    static void foo(){
        a = new int[3];
    }

    public static void main(String[] args){
        foo();
        for(int i = 0; i < a.length; i++){
            System.out.println(a[i]);
        }
    }
}