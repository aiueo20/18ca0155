class Sp{
    Sp(){
        System.out.println("�R���X�g���N�^Sp()���Ăяo����܂����B");
    }
}

class Sub extends Sp{
    Sub(){
        System.out.println("�R���X�g���N�^Sub()���Ăяo����܂����B");
    }

    Sub(int x){
        this();
        System.out.println("�R���X�g���N�^Sub(int)���Ăяo����܂����B" + x);
    }
}

class SampleConstructorChain05{
    public static void main(String[] args){
        new Sub(6);
    }
}