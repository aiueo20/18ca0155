class Item{
    String name;
    int price;

    void showInfo(){
        System.out.println("���i���F" + name);
        System.out.println("���i�F" + price);
    }
}

class SampleInstanceMember04{
    public static void main(String[] args){
        //�C���X�^���X�̐���
        Item item1 = new Item();
        Item item2 = new Item();

        //�C���X�^���X�t�B�[���h�ɒl��ݒ�
        item1.name = "PC";
        item1.price = 12000;
        item2.name = "HD";
        item2.price = 8000;

        //�C���X�^���X���\�b�h�̌Ăяo��
        item1.showInfo();
        item2.showInfo();
    }
}