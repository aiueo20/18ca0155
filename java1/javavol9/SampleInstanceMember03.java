class Item{
    String name;
    int price;

    void showInfo(){
        System.out.println("���i���F" + name);
        System.out.println("���i�F" + price);
    }

}

class SampleInstanceMember03{
    public static void main(String[] args){
        //�C���X�^���X�̐���
        Item item = new Item();

        //�C���X�^���X�t�B�[���h�ɒl��ݒ�
        item.name = "PC";
        item.price = 12000;

        //�C���X�^���X���\�b�h�̌Ăяo��
        item.showInfo();
    }
}