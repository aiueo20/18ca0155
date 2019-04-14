class field{
    // ある映画館の入館料金が1500円です、この映画館の料金体系が以下です
    // 女性または未成年の人は500円引
    // 水曜日のすべての人が500円引
    // 例1 女性、成人、月曜日　→　1000
    // 例2 女性、未成年、月曜日　→　1000
    // 例3 男性、未成年、水曜日　→　1000
    // 例4 女性、未成年、水曜日　→　1000
    // この映画館の料金計算のプログラムを作成
    // ＜作成条件＞
    // ・性別：gender,年齢：age,曜日：dayOfweek
    // ・staticメソッド、isDiscountを作成する
    //         メソッド名：isDiscount
    //         引数リスト：（年齢、性別、曜日）
    //         戻り値の方：boolean     *true...割引,false...割引なし

    // ・staticメソッド、calculatePaymentを作成する
    //         メソッド名：calculatePayment
    //         引数リスト：（定価）
    //         戻り値の方：int「支払い料金」

    static void int theaterFee = 1500;

    public static void main(String[] args){
        int age = 20;
        int gender = 1; //0なら男性、1なら女性
        int dayOfweek = 3; //3なら水曜日

        if(isDiscount(age,gender,dayOfweek)){
            System.out.println(calculatePayment(theaterFee));
        }else{
            System.out.println(calculatePayment());
        }
        
    }

    static boolean isDiscount(int age, int gender, int dayOfweek){
        //割引メソッド
        if(age = 20 || gender = 1 || dayOfweek = 3){
            return true;
        }else{
            return false;
        }
    }

    static void calculatePayment(int price){
        //料金計算メソッド
        if(isDiscount(age,gender,dayOfweek)){
            theaterFee -= 500;
            return theaterFee;
        }else{
            return theaterFee;
        }
    }
}