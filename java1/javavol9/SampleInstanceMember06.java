class Item{
    String name;
    int price;

    void showInfo(){
        System.out.println("���i���F" + name);
        System.out.println("���i�F" + price);
    }
}

class SampleInstanceMember06{
    public static void main(String[] args){
        Item item = null;

        item.showInfo();
    }
}