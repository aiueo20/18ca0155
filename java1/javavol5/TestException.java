import java.util.Scanner;

class TestException{
    public static void main(String[] args){
        int payment = 1200; // �x�������z

        Scanner scan = new Scanner(System.in);
        int num = scan.nextInt();        // ���芨�̐l��

        System.out.println("��l������̎x�����z�F" + payment / num);
    }
}