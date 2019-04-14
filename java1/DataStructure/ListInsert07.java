/*
 *小さい修正や細かい変更があったときにテストすることをFastTestという
 *
 */
class ListInsert07 {
    //staticから利用する変数にはstaticが必要
    static final int NULL = 65535;
    static final int NEXT_P = 0;//ポインタ部の意味-->次のノードの列数(ポインタ)だから
    static final int DATA = 1;//データ部の意味
    
    static void showListNormal(char[][] codes){
        int i;
        i = 0;
        while (codes[0][i] != NULL) {
            i = codes[0][i];
            System.out.print(codes[1][i]+ " ");
        }
        System.out.println("\n");
    }

    public static void main(String[] args) {
        // public static final int NULL = 65535;
        // public static final int NEXT_P = 0;//ポインタ部の意味-->次のノードの列数(ポインタ)だから
        // public static final int DATA = 1;//データ部の意味

        char[][] codes = {//2次元配列
            { 2,        4,   5,   1,   6,  3,    NULL, 2222, 3333, 4444},
            {'\u0000', 'd', 'a', 'c', 'e',  'b',  'Z',  '@',  'X' , ' '},
        };

        int i;

        i = 0;//読みやすくなった↓
        while (codes[NEXT_P][i] != NULL) {
            i = codes[NEXT_P][i];
            System.out.print(codes[DATA][i]+ " ");
        }
        System.out.println("\n");

        //問題；
        //先頭のノード(トップのダミーの次)にデーター部が'＠'のノードを追加
        //新しいノードは今回7列目に作られたものとする(条件1)
        //7列目はわかっている情報とする(条件2)
        //トップのダミーノードは0列目にある(条件3)
        int n = 7;//新しいノードの列数
        int top = 0;//トップのダミーの列数

        //ここにノードを挿入するコードを記述する
        codes[NEXT_P][n] = codes[NEXT_P][top];
        codes[NEXT_P][top] = (char)n;
        //末尾に挿入する場合と代入回数は変わらず

        //連結リストの(ダミーを除く)先頭ノードから終端ノードまで順にデータ部(文字コード)を表示する
        //ここで、 @ a b c d e Z と表示されなければならない

        //メソッド名showListNormal,引数
        //目的mainから渡された2次元配列をリスト構造として先頭から順にデータを表示

        showListNormal(codes);
    
        //ステップアップ：
        //データ部'c'ノードの次にデータ部'X'のノードを追加するには？

        int o = 8;
        int m = 3;

        codes[0][o] = codes[0][m];
        codes[0][m] = (char)o;

        //ここで、 @ a b c X d e Z と表示されなければならない
        i = 0;
        while (codes[0][i] != NULL) {
            i = codes[0][i];
            System.out.print(codes[1][i]+ " ");
        }
        System.out.println("\n");
    
    }
}
//End Of FIle
