class Sp{
    Sp(){
        System.out.println("コンストラクタSp()が呼び出されました。");
    }
}

class Sub extends Sp{
    Sub(){
        System.out.println("コンストラクタSub()が呼び出されました。");
    }

    Sub(int x){
        this();
        System.out.println("コンストラクタSub(int)が呼び出されました。" + x);
    }
}

class SampleConstructorChain05{
    public static void main(String[] args){
        new Sub(6);
    }
}