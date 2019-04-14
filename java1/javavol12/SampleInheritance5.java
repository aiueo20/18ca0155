class Sp{
    static String strSp = "SP";
}

class Sub extends Sp{
    static String strSub = "SUB";

    static void foo(){
        System.out.println(strSp);
        System.out.println(strSub);
    }
}

class SampleInheritance5{
    public static void main(String[] args){
        Sub.foo();
    }
}