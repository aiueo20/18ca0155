class Sp{
    String strSp = "SP";
}

class Sub extends Sp{
    String strSub = "SUB";
    void foo(){
        System.out.println(strSp);
        System.out.println(strSub);
    }
}

class SampleInheritance6{
    public static void main(String[] args){
        Sub sb = new Sub();
        sb.foo();
    }
}