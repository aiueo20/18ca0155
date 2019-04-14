class MyClassA{
}

class MyClassB extends MyClassA{
}

class SampleClassType05{
    public static void main(String[] args){
        MyClassA mca;

        mca = new MyClassA();

        mca = new MyClassB();
    }
}