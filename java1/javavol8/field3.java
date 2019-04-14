class field3{
    static int THEATER_FEE = 1500;
    static int WOMAN = 1;
    static int WEDNESDAY = 3;
    static int ADULT = 21;

    static boolean isDiscount(int age, int gender, int dayOfweek){
        if(age < ADULT || gender == WOMAN || dayOfweek == WEDNESDAY){
            return true;
        }else{
            return false;
        }
    }

    static int calculatePayment(int price){
        price -= 500;
        return price;
    }

    public static void main(String[] args){
        int age = 18;
        int gender = WOMAN; 
        int dayOfweek = WEDNESDAY;  

        if(isDiscount(age,gender,dayOfweek)){
            System.out.println(calculatePayment(THEATER_FEE));
        }else{
            System.out.println(THEATER_FEE);
        }
    }
}