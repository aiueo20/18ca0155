class Person6{
    String name;
    int age;

    Person6(String _name, int _age){
        name = _name;
        age = _age;
        System.out.println(name + "," + age);
    }
}

class SampleClassType01{
    public static void main(String[] args){
        Person6 p;

        p = new Person6("Tanaka", 18);
    }
}