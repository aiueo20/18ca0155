class Item{
    String name;
    int price;

    void showInfo(){
        System.out.println("è§ïiñºÅF" + name);
        System.out.println("âøäiÅF" + price);
    }
}

class SampleInstanceMember06{
    public static void main(String[] args){
        Item item = null;

        item.showInfo();
    }
}