class Sp{
    static void foo(){
        System.out.println("Sp#foo()");
    }
}

class Sub extends Sp{
    static void bar(){
        System.out.println("Sub#bar()");
    }
}

class SampleInheritance02a{
    public static void main(String[] args){
        Sp.foo();
        // Sp.bar();
        Sub.foo();
        Sub.bar();
    }
}