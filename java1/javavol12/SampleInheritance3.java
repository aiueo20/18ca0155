class Sp{
    void foo(){
        System.out.println("Sp#foo()");
    }
}

class Sub extends Sp{
    void bar(){
        System.out.println("Sub#bar()");
    }
}

class SampleInheritance3{
    public static void main(String[] args){
        Sub sb = new Sub();

        sb.foo();
        sb.bar();
    }
}