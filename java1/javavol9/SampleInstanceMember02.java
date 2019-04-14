class Item{
    String name;
    int price;
}

class SampleInstanceMember02{
    public static void main(String[] args){
        Item item1 = new Item();
        Item item2 = new Item();

        item1.name = "PC";
        item1.price = 12000;
        item2.name = "HD";
        item2.price = 8000;

        System.out.println("***** 1個目の商品情報 *****");
        System.out.println("商品名：" + item1.name);
        System.out.println("価格：" + item1.price);

        System.out.println("***** 2個目の商品情報 *****");
        System.out.println("商品名：" + item2.name);
        System.out.println("価格：" + item2.price);
    }
}