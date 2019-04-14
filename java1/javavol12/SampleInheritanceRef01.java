class Sp{
}

class Sub extends Sp{
}

class SampleInheritanceRef01{
    public static void main(String[] args){
        Sp sp1 = new Sp();

        Sub sb1 = new Sub();

        Sp sp2 = new Sub();

        //Sub sb2 = new Sp();
    }
}