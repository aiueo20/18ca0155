class Person2{
    String name;
    int age;

    Person2(String name, int age){
        this.name = name;   //フィールドnameへ代入
        this.age = age;     //フィールドageへ代入
        System.out.println(this.name + "," + this.age);
    }
}


class SampleInstance02{
    public static void main(String[] args){
        new Person2("Tanaka", 23);
    }
}