/*
 *
 */
class ListInsert03 {
    public static void main(String[] args) {
        final int NULL = 65535;
        
        char[][] codes = {//二次元配列
            { 2,        4,   5,   1, NULL, 3,  1111},
            { '\u0000','d', 'a', 'c', 'e', 'b', ' '},//トップにダミーが入ってる
        };
        //ポインタが次のノード（一次の列）を指すルールに従えば
        //先端から順番通りに並べなくてもOK

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
