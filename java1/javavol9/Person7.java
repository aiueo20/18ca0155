class Person7{
    String name;
    int age;

    Person7(String _name, int _age){
        name = _name;
        age = _age;
        System.out.println(name + "," + age);
    }
}

class SampleClassType02{
    public static void main(String[] args){
        Person7 p1 = new Person7("Tanaka", 23);
        Person7 p2 = new Person7("Fukuda", 18);
    }
}