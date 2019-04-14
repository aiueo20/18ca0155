class field2{
static int theaterFee = 1500;
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