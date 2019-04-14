class SampleCall04{
    static void printArray(int[] a){
        for(int i = 0; i < a.length; i++){
            a[i] *= 10;
//            System.out.println(a[i]);
        }
    }

    public static void main(String[] args){
        int[] array = {10, 20, 30};

        printArray(array);

        for(int e: array){
            System.out.println(e);
        }
    }
}