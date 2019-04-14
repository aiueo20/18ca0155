class SampleField01{
    static double tax = 0.08;   //�ŗ�

    //�ō��݉��i���v�Z���郁�\�b�h
    static int calcTaxedPrice(int price){
        return (int)(price + price * tax);
    }
    //0.08�̓}�W�b�N�i���o�[�i��O�Ҍ����番����Ȃ��jtax�ɂ���

    //�ō��݉��i����{��ŕ\������
    static void showTaxedPriceInJpn(int taxedPrice){
        System.out.println(taxedPrice + "�~");
    }

    //�ō��݉��i���p��ŕ\������(xxxx yen)
    static void showTaxedPriceInEng(int taxedPrice){
        System.out.println(taxedPrice + "yen");
    }

    public static void main(String[] args){
    int price1 = 1000;   //���i1�̒艿
    int price2 = 100;    //���i2�̒艿

    //�ō��݉��i�̌v�Z
    int taxedPrice1 = calcTaxedPrice(price1);
    int taxedPrice2 = calcTaxedPrice(price2);

    //�ō��݉��i�̕\��
    showTaxedPriceInJpn(taxedPrice1);
    showTaxedPriceInEng(taxedPrice2);

    //�ŗ��̕ύX
    tax = 0.1;

    //�ō��݉��i�̌v�Z�\��
    showTaxedPriceInJpn(calcTaxedPrice(taxedPrice1));
    showTaxedPriceInJpn(calcTaxedPrice(taxedPrice2));
    }
}