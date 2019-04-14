/*
 *小さい修正や細かい変更があったときにテストすることをFastTestという
 *
 */
class DListInsert01 {
    //staticから利用する変数にはstaticが必要
    static final int NULL = 65535;
    static final int NEXT_P = 0;//ポインタ部
    static final int DATA = 1;//データ部
    static final int PREV_P = 2;//一つ手前のノードを指すポインタ部
    static final int DUMMY = '\u0000';
    
    static void showListReverse(char[][] codes){
        int l = 5;
        int i = l;
        //2行、3行をいじっている
        while(codes[PREV_P][i] != NULL){
            System.out.print(codes[DATA][i] + " ");
            i = codes[PREV_P][i];
        }
        System.out.println("\n");
    }

    static void showListNormal(char[][] codes){
        //System.out.println("showListNormal(char[][])");
        int i = 0;
        while (codes[NEXT_P][i] != NULL) {
            i = codes[NEXT_P][i];
            System.out.print(codes[DATA][i]+ " ");
        }
        System.out.println("\n");
    }

    public static void main(String[] args) {
        //どのファイルを実行しているか確認するための表示
        System.out.println("DListInser01\n");//クラス名を取得する方法がわかれば楽ができる
        char[][] codes = {
            { 1,     2,  3,  4,  5, NULL,1111, 2222, 3333, 4444},
            {DUMMY, 'a','b','c','d','e',  'Z',  '@',  'X' , ' '},
            {NULL,   0,  1,  2,  3,  4,  1111, 2222,  3333, 4444}//←の「,」は書いても書かなくてもいい
        };
    
        showListNormal(codes);

        //練習：双方向リスト構造の最後尾のノードから先頭の順に
        //データ部を表示する
        //ただし、最後尾のノードは列番号が5とわかっているとする
        //まずはmainで記述--->メソッドに分割する
        showListReverse(codes);
    }
}
//End Of FIle
