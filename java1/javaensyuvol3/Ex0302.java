class Ex0302{
    public static void main(String[] args){
        int age;
        age = 20;
        if(age >= 20){
            System.out.println("成人です。");
        }else if (age < 20){
            System.out.println("未成年です。");
        }else if (age < 0){
            System.out.println("負の年齢が代入されています。");
        }
    }
}