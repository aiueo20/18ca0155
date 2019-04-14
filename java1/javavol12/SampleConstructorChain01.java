class Sp{
    Sp(int x){
        System.out.println("コンストラクタSp(int)が呼び出されました。" + x);
    }
}

class Sub extends Sp{
    Sub(){
        super(5);
        System.out.println("コンストラクタSub()が呼び出されました。");
    }
}

class SampleConstructorChain01{
    public static void main(String[] args){
        new Sub();
    }
}