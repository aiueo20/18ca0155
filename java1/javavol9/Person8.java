class Person8{
    String name;
    int age;

    Person8(String _name, int _age){
        name = _name;
        age = _age;
        System.out.println(name + "," + age);
    }
}

class SampleClassType03{
    public static void main(String[] args){
        Person8 p1 = new Person8("Tanaka", 23);
        Person8 p2 = p1;
    }
}