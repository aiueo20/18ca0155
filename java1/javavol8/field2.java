class field2{
static int theaterFee = 1500;
    public static void main(String[] args){
        int age = 20;
        int gender = 1; //0�Ȃ�j���A1�Ȃ珗��
        int dayOfweek = 3; //3�Ȃ琅�j��

        if(isDiscount(age,gender,dayOfweek)){
            System.out.println(calculatePayment(theaterFee));
        }else{
            System.out.println(calculatePayment());
        }
        
    }

    static boolean isDiscount(int age, int gender, int dayOfweek){
        //�������\�b�h
        if(age = 20 || gender = 1 || dayOfweek = 3){
            return true;
        }else{
            return false;
        }
    }

    static void calculatePayment(int price){
        //�����v�Z���\�b�h
        if(isDiscount(age,gender,dayOfweek)){
            theaterFee -= 500;
            return theaterFee;
        }else{
            return theaterFee;
        }
    }
}