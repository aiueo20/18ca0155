class Person4{
    String name;
    int age;

    Person4(String _name, int _age){
        name = _name;   //フィールドnameへ代入
        age = _age; //フィールドageへ代入
        System.out.println(name + "," + age);
    }
}

class SampleInstance04{
    public static void main(String[] args){
        new Person4("Tanaka", 25);
        new Person4("Fukuda", 45);
    }
}