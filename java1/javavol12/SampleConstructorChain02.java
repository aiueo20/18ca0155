class Sp{
    Sp(){
        System.out.println("�R���X�g���N�^Sp()���Ăт���܂����B");
    }
}

class Sub extends Sp{
    Sub(){
        super();
        System.out.println("�R���X�g���N�^Sub()���Ăяo����܂����B");
    }
}

class SampleConstructorChain02{
    public static void main(String[] args){
        new Sub();
    }
}