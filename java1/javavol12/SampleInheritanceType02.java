class Sp{
}

class Sub extends Sp{
}

class SampleInheritanceType02{
    public static void main(String[] args){
        Sub sb = new Sub();
        Sp sp;

        sp = (Sp)sb;

        System.out.println(sp);
        System.out.println(sb);
    }

}