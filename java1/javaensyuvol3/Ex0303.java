class Ex0303{
    public static void main(Strnig[] args){
        int a,b;
        a = 10;
        b = 20;

        int max;

        if(a > b){
            max = a;
            System.out.println("最大値は" + max);
        }else if(b > a){
            max = b;
            System.out.println("最大値は" + max);
        }else {
            System.out.println("値が同じです。");
        }
    }
}