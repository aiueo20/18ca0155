class Test2{
    public static void main(String[] args){
        int x = 10;
        boolean b = false;
        if(b = !b){
            System.out.println(x = 2 * x);
        }else{
            System.out.print(b); //こんな感じで確認するとよい
        }
    }
}