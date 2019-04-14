class Sp{
    String strSp = "SP";
}

class Sub extends Sp{
    String strSub = "SUB";
}

class SampleInheritance2{
    public static void main(String[] args){
        Sp sp = new Sub();
        System.out.println(sp.strSp);
        System.out.println(sp.strSub);
    }
}