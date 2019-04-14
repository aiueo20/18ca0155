class Ex0305{
    public static void main(String[] args){
        int a,b,c,d,max;
        a = 10;
        b = 20;
        c = 30;
        d = 40;

        max = a;
        if(max < b){
            max = b;
        }

        if(max < c){
            max = c;
        }

        if(max < d){
            max = d;
        }

        System.out.print("Å‘å’l‚Í" + max);
    }
}