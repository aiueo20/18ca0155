class SampleField01{
    static double tax = 0.08;   //税率

    //税込み価格を計算するメソッド
    static int calcTaxedPrice(int price){
        return (int)(price + price * tax);
    }
    //0.08はマジックナンバー（第三者見たら分からない）taxにする

    //税込み価格を日本語で表示する
    static void showTaxedPriceInJpn(int taxedPrice){
        System.out.println(taxedPrice + "円");
    }

    //税込み価格を英語で表示する(xxxx yen)
    static void showTaxedPriceInEng(int taxedPrice){
        System.out.println(taxedPrice + "yen");
    }

    public static void main(String[] args){
    int price1 = 1000;   //商品1の定価
    int price2 = 100;    //商品2の定価

    //税込み価格の計算
    int taxedPrice1 = calcTaxedPrice(price1);
    int taxedPrice2 = calcTaxedPrice(price2);

    //税込み価格の表示
    showTaxedPriceInJpn(taxedPrice1);
    showTaxedPriceInEng(taxedPrice2);

    //税率の変更
    tax = 0.1;

    //税込み価格の計算表示
    showTaxedPriceInJpn(calcTaxedPrice(taxedPrice1));
    showTaxedPriceInJpn(calcTaxedPrice(taxedPrice2));
    }
}