class Ex0304{
    public static void main(String[] args){
        int a,b,c;
        a = 10;
        b = 20;
        c = 30;
        int max;

        if(a > b){
        }else if(b > c){
            max = a;
            System.out.println("Å‘å’l‚Í" + max);
        }else if(c > b){
        }else if(c > a){
            max = c;
            System.out.println("Å‘å’l‚Í" + max);
        }else if(b > a){
        }else if(b > c){
            max = b;
            System.out.println("Å‘å’l‚Í" + max);
        }
    }
}