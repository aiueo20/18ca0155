class Item{
    String name;
    int price;

    void showInfo(){
        System.out.println("商品名：" + name);
        System.out.println("価格：" + price);
    }
}

class SampleInstanceMember04{
    public static void main(String[] args){
        //インスタンスの生成
        Item item1 = new Item();
        Item item2 = new Item();

        //インスタンスフィールドに値を設定
        item1.name = "PC";
        item1.price = 12000;
        item2.name = "HD";
        item2.price = 8000;

        //インスタンスメソッドの呼び出し
        item1.showInfo();
        item2.showInfo();
    }
}