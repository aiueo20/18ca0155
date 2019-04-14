class ArraySample04{
    public static void main(String[] args){
        char [] code = {'A','B','C','D','E','F'};

        int n;

        for(n = 5; n > 0; n--){
            code[n] = code[n - 1];
        }

        code[0] = '\u0000';

        for(n = 0; n <= 5;n++){
            System.out.println(code[n]);
        }
    }
}