import com.exchange.Converter;

public class Client{
    public static void main(String[] arsg){
        //Converter�N���X�̃C���X�^���X��
        Converter c = new Converter();

        int dollar = 1; //1�h��

        //���ʂ̕\��
        System.out.println(dollar + "�h����" + c.toYen(dollar) + "�~�ł��B");
    }
}