class Person2{
    String name;
    int age;

    Person2(String name, int age){
        this.name = name;   //�t�B�[���hname�֑��
        this.age = age;     //�t�B�[���hage�֑��
        System.out.println(this.name + "," + this.age);
    }
}


class SampleInstance02{
    public static void main(String[] args){
        new Person2("Tanaka", 23);
    }
}