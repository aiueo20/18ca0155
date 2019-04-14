class SampleConditional{
    public static void main(String[] args){
        //int x = -7;
        //System.out.println((x > 0)? x : -x);

        
        int a = 7;
        int b = 5;

        if(a > b){
            System.out.println("最大値は" + a + "です。");
        }else{
            System.out.println("最大値は" + b + "です。");
        }

        //↑より↓のほうがいい
        int max;
        if (a > b){
            max = a;
        }else{
            max = b;
        }
        System.out.println(max + "です。");
    }
}