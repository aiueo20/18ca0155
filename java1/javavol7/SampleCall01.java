class SampleCall01{
    static double add(int v, int w){
        int sum = v + w;
        return sum;
    }

    public static void main(String[] args){
        int x = 12;
        int y = 3;
        double result = add(x, y);
        System.out.println(result);
    }
}