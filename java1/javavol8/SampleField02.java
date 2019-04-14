class SampleField02{
    static double discount = 0.7;

    final static int SPRING = 0;
    final static int SUMMER = 1;
    final static int AUTUMN = 2;
    final static int WINTER = 3;

    public static void main(String[] args){
        
        //t 0, ‰Ä 1,H 2,“~ 3

        //q‹ó—¿‹à
        int fee = 10000;

        //‰Ä‚Æ“~‚Í10000‰~
        //t‚ÆH‚Ìê‡‚ÍA—¿‹à‚ª30%ƒIƒt‚É‚È‚é
        int season = 0;
        //0~3‚Ü‚Å“ü‚Á‚Ä‚é‚Æ‰¼’è‚·‚é

        fee = calculateFee(fee, season);
        System.out.println("x•¥‚¢—¿‹à" + fee + "‰~");


        //case‚Ì‰¡‚É‚Í‚Ó‚Â‚¤•Ï”‚Í‚±‚È‚¢‚ªAfinal‚Ì•Ï”‚Ì‚İg‚¦‚éA’l‚ª•Ï‚í‚ç‚È‚¢‚©‚ç
        switch(season){ //fee‚Å‚Í‚È‚­seasoni’ù³Ï‚İ
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

    //season == 0 || season == 2‚¾‚ÆA0‚Æ2‚ª‚È‚É‚©‚í‚©‚ç‚È‚¢‚©‚ç‹C‚¿ˆ«‚¢
    static int calculateFee(int fee,int season){
        if (season == SPRING || season == AUTUMN){
            fee = (int)(fee *= discount);
        }
        return fee;
    }

}