/*
 *
 */
class SSearch01 {
    public static void main(String[] args) {
        //destination
        char[] dst = {'f','S','p','o','Q','F','j','i','S',};

        char src = 'S';

        //問題：dst配列の中にあるキャラクターコード群がある
        //    src変数に格納されたキャラクターコードと同じものが配列の何番目にあるか
        //    調べ、その結果を「？ はdst配列の ？番目に存在します」の形式で表示する
        // int i;//添え字を表現する変数
        // i = 0;//添え字の初期化
        // while(dst[i] != src){//srcと？？を比較する
        //     i++;//次の要素へ
        //     if(dst[i] == src){
        //         System.out.println(src + "はdst配列の" + i + "番目に存在します");
        //         break;
        //     }
        // }
        //↑は例外処理

        //    --->線形検索(シーケンシャルサーチ)
        //    例：現在srcには'Q'を格納しているので
        //       「Q はdst配列の 4番目に存在します」と表示されるはず
        // i = 0;
        // while(dst[i] != src){
        //     i++;
        //     if(i == dst.length){
        //         System.out.println(src + "はdst配列に存在しません");
        //         break;
        //     }
        // }
        //↑
        // ステップアップ1:もしdst配列に存在しない場合文字コード(例えば'A')をsrc変数に格納した場合
        //             「？ はdst配列に存在しません」とエラーメッセージ表示するプログラムに改良する
        //             ※上記プログラムではjava.lang.ArrayIndexOutOfBoundsException例外が発生
        //               するが、このメッセージを表示させない様にする
        //             ※ヒント:
        // int d;
        // for(d = 0; d < dst.length; d++){
        //     if(dst[d] == src){
        //         System.out.println(src + "はdst配列の" + d + "番目に存在します");
        //     }
        // }
        // ↑ステップアップ2:dst配列には'S'が2カ所存在するので、src変数に’S'を格納した場合
        //             上記プログラムでは
        //             「S はdst配列の 1番目に存在します」
        //             とだけ表示されるだけである。これを改良し
        //             「S はdst配列の 1番目に存在します」
        //             「S はdst配列の 8番目に存在します」
        //              と全て表示するプログラムに改良する
        //　　　　　　　　　※ヒント : dst配列と同じ要素数のint型配列を宣言し
        //                      その配列の各要素に、発見した添字番号を格納するというのはどうだろう
        //                      なお、dst配列に存在しない場合のエラーメッセージも正しく表示させること
        // int e;
        // for(e = 0; e < dst.length; e++){
        //     if(dst[e].equalsIgnoreCase(src)){
        //         System.out.println(src + "はdst配列の" + e + "番目に存在します");
        //     }
        // }
        // ↑ステップアップ3:dst配列のキャラクターコードの大文字と小文字を区別せずに検索(サーチ)する
        //              src変数には大文字が格納されても小文字が格納されても正しく動作させる
    }
}
//End Of FIle
