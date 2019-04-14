/*
 *
 */
class DListInsert02Ans {
    static final int NULL = 65535;
    static final int NEXT_P = 0;//ポインタ部の意味-->次のノードの列数(ポインタ）なので
    static final int DATA = 1;//データ部の意味
    static final int PREV_P = 2;//一つ手前のノードを指すポインタ部
    static final char DUMMY = '\u0000';
    static int d;
    static int i;

    static void showListNormal(char[][] codes) {
        int i = 0;
        while (codes[NEXT_P][i] != NULL) {
            i = codes[NEXT_P][i];
            System.out.print(codes[DATA][i]+ " ");
        }
        System.out.println("\n");
    } 

    static int getLastNodeIndex(char[][] codes){
        int i = 0;
        while(codes[NEXT_P][i] != NULL){
            i = codes[NEXT_P][i];
            //codes[NEXT_P][i] == NULLの時にループを終了←iの値が終端ノードの列数になっている
            if(codes[NEXT_P][i] == NULL){
                d = i;
            }
        return d;
        }
    }
    static void showListReverse(char[][] codes) {
        //int l = 4;//今回はラストノードが4番目とわかっているので変更なし
        int l = getLastNodeIndex(codes);//これを実現してプログラムでラストノードの列数を取得
        int i = l;
        while (codes[PREV_P][i] != NULL) {
            System.out.print(codes[DATA][i] + " ");
            d = codes[PREV_P][i];
        }
        System.out.println("\n");
    }
    public static void main(String[] args) {
        //どのファイルを実行しているか確認するための表示
        System.out.println("DListInsert02\n");//クラス名を取得する方法がわかれば楽ができる
        char[][] codes = {//2次元配列
            { 2,     4,   5,   1,  NULL,  3,  1111, 2222, 3333, 4444},
            {DUMMY, 'd', 'a', 'c', 'e',  'b',  'Z',  '@',  'X' , ' '},
            { NULL,  3,   0,   5,   1,    2,  1111, 2222, 3333, 4444},
        };

        showListNormal(codes); //正順表示「a b c d e」と表示される 
        showListReverse(codes);//逆順表示「e d c b a」と表示される 

        //問題1：先頭ノードにデータ部が'＠'のノードを追加する(必須)
        //・データ部が'＠'のノードは配列の7列目に存在するとわかっている(条件1)
        //・トップアンカー(ダミー)は配列の0列目に存在することはわかっている(条件2)
        //・挿入する前の先頭ノードの列番号(添字)はリスト構造から取得できる(条件3)
        int n = 7;  //データ部が'＠'のノードの列番号
        int top = 0;//トップアンカーノードの列番号
        int oldTop = codes[NEXT_P][top];//挿入する前の先頭ノードの列番号
        
        //以下に双方向リストにノードを追加する式分を記述する
        codes[PREV_P][n] = (char)top;
        codes[PREV_P][oldTop] = (char)n;
        codes[NEXT_P][n] = (char)oldTop;
        codes[NEXT_P][top] = (char)n;


        showListNormal(codes); //正順表示「@ a b c d e」と表示される
        showListReverse(codes);//逆順表示「e d c b a @」と表示される
        //トップに挿入＝トップアンカー（ダミー：０列目）の次のノードに挿入する作業
        //
        //

        //問題2：データ部が'c'のノードの次にデータ部が’X'のノードを追加する(必須)
        //・データ部が'X'のノードは配列の8列目に存在するとわかっている(条件1)
        //・データ部が'c'のノードが配列の3列目に存在するとわかっている(条件2)
        //・挿入する前に、データ部が'c'のノードの次にあるノードの列番号(添字)はリスト構造から取得できる(条件3)
        int o = 8;//データ部が'X'のノードの列番号
        int m = codes[PREV_P][3];//データ部が'c'のノードの列番号
        int oldCNext = 1;//挿入する前の、データ部が'c'のノードの次のノードの列番号
        

        //以下に双方向リストにノードを追加する式分を記述する
        codes[PREV_P][o] = (char)m;
        codes[PREV_P][oldCNext] = (char)o;
        codes[NEXT_P][o] = (char)oldCNext;
        codes[NEXT_P][m] = (char)o;


        showListNormal(codes); //正順表示「@ a b c X d e」と表示される 
        showListReverse(codes);//逆順表示「e d X c b a @」と表示される
    }
}
//End Of FIle
