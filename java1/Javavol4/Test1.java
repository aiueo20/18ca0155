class Test1{
    public static void main(String[] args){
        boolean b1 = true;
        boolean b2 = b1;
        if(!b1 == b2){
            System.out.println("A");
        } else {
            System.out.println("B");
        }
        System.out.println("b1:" + b1);
    }
}