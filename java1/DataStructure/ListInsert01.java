/*
 *
 */
class ListInsert01 {
    public static void main(String[] args) {
        char[][] codes = {//二次元配列
            { 1,   2,   3,   4,   5,   65535,    1111},
            {'a', 'b', 'c', 'd', 'e',  '\u0000', ' '},
        };
        

        int i;

        i = 0;
        while (codes[0][i] != 65535) {//終端ノードじゃなかったら真(true)
            System.out.print(codes[1][i]+ " ");
            i = codes[0][i];//ポインタ部のポインタ（次のノード列の添え字）でiを更新
            //配列の場合はiは++するが、リスト構造はポインタ部の情報を使って更新
        }
        System.out.println("\n");//PowerShellの改行
    }
}
//End Of FIle
