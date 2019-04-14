class Sp{
    Sp(){
        System.out.println("コンストラクタSp()が呼びされました。");
    }
}

class Sub extends Sp{
    Sub(){
        super();
        System.out.println("コンストラクタSub()が呼び出されました。");
    }
}

class SampleConstructorChain02{
    public static void main(String[] args){
        new Sub();
    }
}