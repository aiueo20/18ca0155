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
        System.out.println("�����F" + this.name);
        System.out.println("�N��F" + this.age);
        System.out.println("�Z���F" + this.address);
    }
}

public class SampleThisRef02{
    public static void main(String[] args){
        Customer c1 = new Customer("�R�c���Y", 32, "�����s���c�s");
        Customer c2 = new Customer("��؉Ԏq", 27, "��ʌ��u�؎s");
        c1.showInfo();
        c2.showInfo();
    }
}