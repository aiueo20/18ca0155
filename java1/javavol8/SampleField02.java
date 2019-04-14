class SampleField02{
    static double discount = 0.7;

    final static int SPRING = 0;
    final static int SUMMER = 1;
    final static int AUTUMN = 2;
    final static int WINTER = 3;

    public static void main(String[] args){
        
        //春 0, 夏 1,秋 2,冬 3

        //航空料金
        int fee = 10000;

        //夏と冬は10000円
        //春と秋の場合は、料金が30%オフになる
        int season = 0;
        //0~3まで入ってると仮定する

        fee = calculateFee(fee, season);
        System.out.println("支払い料金" + fee + "円");


        //caseの横にはふつう変数はこないが、finalの変数のみ使える、値が変わらないから
        switch(season){ //feeではなくseason（訂正済み
            case SPRING:
                fee = (int)(fee - fee * discount);
                break;
            case SUMMER:
                break;
            case AUTUMN:
                fee = (int)(fee - fee * discount);
            case WINTER:
                break;
        }
    }

    //season == 0 || season == 2だと、0と2がなにかわからないから気持ち悪い
    static int calculateFee(int fee,int season){
        if (season == SPRING || season == AUTUMN){
            fee = (int)(fee *= discount);
        }
        return fee;
    }

}