class Ex0104{
    public static void main(String[] args){
        int price = 1200;
        double tax = 1.08;

        double taxedPrice = price * tax;

        System.out.println(price + "‰~");
        System.out.println((int)taxedPrice + "‰~");
    }
}