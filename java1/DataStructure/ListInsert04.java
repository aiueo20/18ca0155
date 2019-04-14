/*
 *
 */
class ListInsert04 {
    public static void main(String[] args) {
        final int NULL = 65535;
        
        char[][] codes = {//二次元配列
            { 2,        4,   5,   1,   NULL, 3,  1111, 2222, 3333, 4444},
            { '\u0000','d', 'a', 'c', 'e', 'b', 'Z',  ' ',  ' ',  ' '},//トップにダミーが入ってる
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
        System.out.println("\n");

        //最後のノードの次にデータ部が'Z'のノードを追加
        //新しいノードは今回6列目に作られたものとする(条件1)
        //6列目はわかっている情報とする(条件2)
        //最後のノードは4列目とわかっているものとする(条件3:配列と合わせた条件)

        int n = 6;//新しいノードの列数
        int last = 4;//終端ノードの列数

        codes[0][n] = codes[0][last];
        codes[0][last] = (char)n;
        i = 0;
        while(codes[0][i] != NULL){
            i = codes[0][i];
            System.out.print(codes[1][i] + " ");
        }

    }
}
//End Of FIle
