import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.IOException;

class SampleDoWhile01{
    public static void main(String[] args)throws IOException{ 
            BufferedReader br = new BufferedReader(new InputStreamReader(System.in));

            //System.out.print("�Ïؔԍ�>");

            //�������Ïؔԍ������͂����܂ŌJ��Ԃ�
//            int inPW;
//            do {
//                System.out.print("�Ïؔԍ�>");
//                inPW = Integer.parseInt(br.readLine()); //�R���\�[���ɓ��͂��ꂽ���̂��󂯎���Ă���
//            } while(inPW != 1234);

//            System.out.println("���O�C�����܂����B");
        int inPW;
        int count;
        System.out.print("�Ïؔԍ�>");
        inPW = Integer.parseInt(br.readLine());
        
//            switch(inPW){
//                case 1234:
//                    System.out.println("���O�C���ł��܂���");
//                    break;
//                default:
//                System.out.println("���O�C���ł��܂���");
        if(inPW == 1234){
            System.out.println("���O�C���ł��܂���");
        }else{

            for(count = 1; count < 3){
                if(count == 3){
                    System.out.println("��������܂���");
                }
            System.out.println("����" + count + "��œ�������܂�");
            continue;
            }
        }
    }
}