class Sp{
    static String strSp = "SP";
}

class Sub extends Sp{
    static String strSub = "SUB";
}

class SampleInheritance4{
    public static void main(String[] args){
        System.out.println(Sp.strSp);
        //System.out.println(Sp.strSub);
        System.out.println(Sub.strSp);
        System.out.println(Sub.strSub);
    }
}