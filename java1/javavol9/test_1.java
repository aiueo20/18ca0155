class MyClass{
    int x;
    void MyClass(x){
        this.x = x;
    }
    MyClass(){
        this(-1);
    }
}

class test_1{
    public static void main(String[] args){
        MyClass mc = new MyClass();
        System.out.println(mc.x);
    }
}