class SampleFor{
    public static void main(String[] args){
        int[] a1 = {11, 12, 13};

        for(int i = 0; i < a1.length; i++){
            System.out.print(a1[i] + " ");
        }

        System.out.println();

        for(double e: a1){
            System.out.print(e + " ");
        }
    }
}