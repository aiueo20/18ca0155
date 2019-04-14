class Item{
    String name;
    int price;

    void showInfo(){
        System.out.println("商品名：" + name);
        System.out.println("価格：" + price);
    }

}

class SampleInstanceMember03{
    public static void main(String[] args){
        //インスタンスの生成
        Item item = new Item();

        //インスタンスフィールドに値を設定
        item.name = "PC";
        item.price = 12000;

        //インスタンスメソッドの呼び出し
        item.showInfo();
    }
}