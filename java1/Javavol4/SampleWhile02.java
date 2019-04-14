class SampleWhile02{
    public static void main(String[] args){
        int x = 0,y = 0;
        while(x < 3){
            x++;
            y += x;
        }
        System.out.println(x + ":" + y);
    }
}