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

class SampleInheritance4_1{
    public static void main(String[] args){
        Sp sp = new Sub();

        sp.foo();
        //sp.bar();
    }
}