class SampleConditional{
    public static void main(String[] args){
        //int x = -7;
        //System.out.println((x > 0)? x : -x);

        
        int a = 7;
        int b = 5;

        if(a > b){
            System.out.println("�ő�l��" + a + "�ł��B");
        }else{
            System.out.println("�ő�l��" + b + "�ł��B");
        }

        //����聫�̂ق�������
        int max;
        if (a > b){
            max = a;
        }else{
            max = b;
        }
        System.out.println(max + "�ł��B");
    }
}