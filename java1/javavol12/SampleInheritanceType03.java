class Sp{
}

class Sub extends Sp{
}

class SampleInheritanceType03{
    public static void main(String[] args){
        Sp sp = new Sub();

        Sub sb;

        sb = (Sub)sp;

        System.out.println(sp);
        System.out.println(sb);
    }
}