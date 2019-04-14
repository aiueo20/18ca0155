class Sp{
    void foo(){
        System.out.println("Sp#foo()");
    }
}

class Sub extends Sp{
    void bar(){
        foo();
        System.out.println("Sub#bar()");
    }
}

class SampleInheritance5_1{
    public static void main(String[] args){
        Sub sb = new Sub();

        sb.bar();
    }
}