import com.exchange.Converter;

public class Client{
    public static void main(String[] arsg){
        //Converterクラスのインスタンス化
        Converter c = new Converter();

        int dollar = 1; //1ドル

        //結果の表示
        System.out.println(dollar + "ドルは" + c.toYen(dollar) + "円です。");
    }
}