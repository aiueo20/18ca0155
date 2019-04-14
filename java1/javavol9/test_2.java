class MyClass{
    int x;
    MyClass(int x){
        this.x = x;
    }
    MyClass(){
        this(-1);
    }
}

class test_2{
    public static void main(String[] args){
        MyClass mc1 = new MyClass();
        MyClass mc2 = new MyClass(4);
        System.out.println(mc1.x);
        System.out.println(mc2.x);
;    }
}