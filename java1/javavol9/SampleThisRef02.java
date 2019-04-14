class Customer{
    String name;
    int age;
    String address;

    Customer(String name, int age, String address){
        this.name = name;
        this.age = age;
        this.address = address;
    }

    void showInfo(){
        System.out.println("氏名：" + this.name);
        System.out.println("年齢：" + this.age);
        System.out.println("住所：" + this.address);
    }
}

public class SampleThisRef02{
    public static void main(String[] args){
        Customer c1 = new Customer("山田太郎", 32, "東京都町田市");
        Customer c2 = new Customer("鈴木花子", 27, "埼玉県志木市");
        c1.showInfo();
        c2.showInfo();
    }
}