import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.IOException;

class SampleDoWhile01{
    public static void main(String[] args)throws IOException{ 
            BufferedReader br = new BufferedReader(new InputStreamReader(System.in));

            //System.out.print("暗証番号>");

            //正しい暗証番号が入力されるまで繰り返す
//            int inPW;
//            do {
//                System.out.print("暗証番号>");
//                inPW = Integer.parseInt(br.readLine()); //コンソールに入力されたものを受け取っている
//            } while(inPW != 1234);

//            System.out.println("ログインしました。");
        int inPW;
        int count;
        System.out.print("暗証番号>");
        inPW = Integer.parseInt(br.readLine());
        
//            switch(inPW){
//                case 1234:
//                    System.out.println("ログインできました");
//                    break;
//                default:
//                System.out.println("ログインできません");
        if(inPW == 1234){
            System.out.println("ログインできました");
        }else{

            for(count = 1; count < 3){
                if(count == 3){
                    System.out.println("凍結されました");
                }
            System.out.println("あと" + count + "回で凍結されます");
            continue;
            }
        }
    }
}