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

        System.out.println("***** 1�ڂ̏��i��� *****");
        System.out.println("���i���F" + item1.name);
        System.out.println("���i�F" + item1.price);

        System.out.println("***** 2�ڂ̏��i��� *****");
        System.out.println("���i���F" + item2.name);
        System.out.println("���i�F" + item2.price);
    }
}