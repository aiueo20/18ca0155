class Sp{
}

class Sub extends Sp{
}

class SampleInheritanceType01{
    public static void main(String[] args){
        Sub sb = new Sub();
        Sp sp;

        sp = sb;

        System.out.println(sp);
        System.out.println(sb);
    }
}