class SampleCall06{
    static int[] createArray(){
        int[] a = {10, 20, 30};
        return a;
    }

    public static void main(String[] args){
        int[] b;
        b = createArray();
        for(int i = 0li < b.length; i++)
        System.out.println(b[i]);
    }
}