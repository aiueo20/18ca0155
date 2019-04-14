class ArraySample03{
    public static void main(String[] args){
        char [] code = {'A','B','C','D','E','F'};

        int n;
        for(n = 0; n < 5; n++){
            code[n] = code[n + 1];
        }

        n = 5;
        code[n] = '\u0000';

        for(n = 0; n <= 5; n++){
            System.out.print(code[n]);
        }
    }
}