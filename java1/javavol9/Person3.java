class Person3{
    String name;
    int age;

    Person3(){
        System.out.println(name + "," + age);
    }
}

class SampleInstance03{
    public static void main(String[] args){
        new Person3();
    }
}