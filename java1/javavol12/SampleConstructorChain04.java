class Sp{
    Sp(int x){
        System.out.println("�R���X�g���N�^Sp(int)���Ăяo����܂����B" + x);
    }
}

class Sub extends Sp{
    Sub(){
        System.out.println("�R���X�g���N�^Sub()���Ăяo����܂����B");
    }
}

class SampleConstructorChain04{
    public static void main(String[] args){
        new Sub();
    }
}