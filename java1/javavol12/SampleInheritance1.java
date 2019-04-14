class Sp{
    String strSp = "SP";
}

class Sub extends Sp{
    String strSub = "SUB";
}

class SampleInheritance1{
    public static void main(String[] args){
        Sub sb = new Sub();

        System.out.println(sb.strSp);
        System.out.println(sb.strSub);
    }
}