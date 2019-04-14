class Sp{
    int x = 10;
    void Foo(){
        System.out.println("Sp#foo()");
    }
}

class Sub extends Sp{
    int y = 20;
    void bar(){
        System.out.println("Sub#bar()");
    }
}

class SampleSubInstance01{
    public static void main(String[] args){
        new Sub();
    }
}