/*
 *
 */
class ListInsert02 {
    public static void main(String[] args) {
        final int NULL = 65535;//NULLを65535と定義した
        //定義変数の宣言（Javaの機能、定数変数名は一般に大文字で定義（スネークケース）
        char[][] codes = {//二次元配列
            { 1,   2,   3,   4,   5,   NULL,    1111},
            { '\u0000','a', 'b', 'c', 'd', 'e', ' '},//トップにダミーが入ってる
        };

        int i;

        i = 0;//トップのノード（ダミー）を表す列数
        while (codes[0][i] != NULL) {//終端ノードじゃなかったら真(true)
            i = codes[0][i];//ポインタ部のポインタ（次のノード列の添え字）でiを更新
            //配列の場合はiは++するが、リスト構造はポインタ部の情報を使って更新
            System.out.print(codes[1][i]+ " ");

        }
        System.out.println("\n");//PowerShellの改行
    }
}
//End Of FIle
