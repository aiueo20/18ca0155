class Sp{
    Sp(int x){
        System.out.println("�R���X�g���N�^Sp(int)���Ăяo����܂����B" + x);
    }
}

class Sub extends Sp{
    Sub(){
        super(5);
        System.out.println("�R���X�g���N�^Sub()���Ăяo����܂����B");
    }
}

class SampleConstructorChain01{
    public static void main(String[] args){
        new Sub();
    }
}