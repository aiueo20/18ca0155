/*
 *
 */
class SSearch01_1 {
    public static void main(String[] args) {
        //destination
        char[] dst = {'f','S','p','o','Q','F','j','i','S',};

        char src = 'S';

        // int i;
        // i = 0;
        // while(dst[i] != src){
        //     i++;
        //     if(dst[i] == src){
        //         System.out.println(src + "はdst配列の" + i + "番目に存在します");
        //         break;
        //     }
        // }

        // i = 0;
        // while(dst[i] != src){
        //     i++;
        //     if(i == dst.length){
        //         System.out.println(src + "はdst配列に存在しません");
        //         break;
        //     }
        // }

        int d;
        for(d = 0; d < dst.length; d++){
            if(dst[d] == src){
                System.out.println(src + "はdst配列の" + d + "番目に存在します");
            }
        }

        // int e;
        // for(e = 0; e < dst.length; e++){
        //     if(dst[e].equalsIgnoreCase(src)){
        //         System.out.println(src + "はdst配列の" + e + "番目に存在します");
        //     }
        // }

    }
}
//End Of FIle

        //問題1：dst配列の中にあるキャラクターコード群がある
        //    src変数に格納されたキャラクターコードと同じものが配列の何番目にあるか
        //    調べ、その結果を「？ はdst配列の ？番目に存在します」の形式で表示する

        // ステップアップ1:もしdst配列に存在しない場合文字コード(例えば'A')をsrc変数に格納した場合
        //             「？ はdst配列に存在しません」とエラーメッセージ表示するプログラムに改良する
        //             ※上記プログラムではjava.lang.ArrayIndexOutOfBoundsException例外が発生
        //               するが、このメッセージを表示させない様にする
        //             ※ヒント:
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

        // ↑ステップアップ3:dst配列のキャラクターコードの大文字と小文字を区別せずに検索(サーチ)する
        //              src変数には大文字が格納されても小文字が格納されても正しく動作させる
        //ヒント：書き方はいろいろある
        //大文字とは'A'  <=（しょうなりいこーる）  dst[?]   &&  dst[?] <= 'Z'
        //小文字とは'a' <= dst[?] && dst[?] <= 'z'で真
        //大文字を小文字に変換する
        //dst[?] = dst[?] + ('a' - 'A')
        //小文字を大文字に変換する
        //dst[?] = dst[?] - ('a' - 'A')
        //一旦比較する文字を大文字か小文字のいずれかに変換してから比較すればOK！
        //unicodeで大文字小文字を判断する