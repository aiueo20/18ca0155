class Person1{
    String name = "Tanaka";
    int age = 23;

    Person1(){
        System.out.println(name + "," + age);
    }
}

class SampleInstance01{
    public static void main(String[] args){
        new Person1();
    }
}