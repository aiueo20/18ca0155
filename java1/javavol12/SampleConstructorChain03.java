class Sp{
    Sp(){
        System.out.println("コンストラクタSp()が呼び出されました。");
    }
}

class Sub extends Sp{
    Sub(){
        System.out.println("コンストラクタSub()が呼び出されました。");
    }
}

class SampleConstructorChain03{
    public static void main(String[] args){
        new Sub();
    }
}