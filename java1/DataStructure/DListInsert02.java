class DListInsert02 {
    static final int NULL = 65535;
    static final int NEXT_P = 0;//ポインタ部
    static final int DATA = 1;//データ部
    static final int PREV_P = 2;//一つ手前のノードを指すポインタ部
    static final int DUMMY = '\u0000';
    static int d = 0;
    static int endNum; //宿題1
    static char c; //宿題2
    static int count; //宿題2
    static int i; 

    static void showListReverse(char[][] codes){
        getLastNodeIndex(codes);
        System.out.println("codes配列の終端ノード列数は" + endNum);

        int l = 4;
        int i = l;
        //2行、3行をいじっている
        while(codes[PREV_P][i] != NULL){
            System.out.print(codes[DATA][i] + " ");
            i = codes[PREV_P][i];
        }
        System.out.println("\n");
    }

    static void showListNormal(char[][] codes){
        int l = 4;  //4から開始
        int i = 0;
        while (codes[NEXT_P][i] != NULL) {
            i = codes[NEXT_P][i];
            System.out.print(codes[DATA][i]+ " ");
        }
        System.out.println("\n");}

    public static void main(String[] args) {
        char[][] codes = {
            { 2,     4,  5,  1,NULL, 3, 1111, 2222, 3333, 4444},
            {DUMMY, 'd','a','c','e','b',  'Z',  '@',  'X' , ' '},
            {NULL,   3,  0,  5,  1,  2,  1111, 2222,  3333, 4444}
        };
        char c = 'e';
        
        System.out.println("引数cに格納された物と同じ列数は" + getNodeIndex(codes,c));

        int n = 7;      //データ部が'＠'のノードの列番号
        int top = 0;    //トップアンカーノードの列番号

        codes[0][7] = (char)2;
        codes[0][top] = (char)n;
        codes[2][2] = (char)n;
        codes[2][n] = (char)0;

        showListNormal(codes);
        showListReverse(codes);

        int o = 8;      //データ部が'X'のノードの列番号
        int m = 3;      //データ部が'c'のノードの列番号
        codes[0][m] = (char)o;
        codes[0][o] = (char)1;
        codes[2][1] = (char)o;
        codes[2][o] = (char)m;

        showListNormal(codes);
        showListReverse(codes);
    }
    static int getLastNodeIndex(char[][] codes){
        
        while(codes[PREV_P][d] != NULL){
            System.out.print(codes[DATA][d] + " ");
            d = codes[PREV_P][d];
            if(codes[PREV_P][d] == NULL){
                endNum = codes[PREV_P][d];
            }
        }
        return endNum;
    }

    static int getNodeIndex(char[][] codes, char c){
        count = 0;
        for(i = 1; i < codes[DATA].length + 1; i++){
            count++;
            if(codes[DATA][i] == c){ 
                return count;
            }if(codes[DATA][i] != c){
                continue;
            }
        }
        return NULL;
    }
}
//End Of FIle
        //ステップアップ1:以下のメソッド作成し、showListReverseメソッド内で呼び出す
        //メソッド名 : getLastNodeIndex
        //引数     : char[][] codes
        //戻り値型  : int
        //機能     : codesで示されたリスト構造の終端ノードの列数を取得する

        //ステップアップ2:以下のメソッド作成しmain呼び出す
        //メソッド名 : getNodeIndex
        //引数     : char[][] codes, char c
        //戻り値型  : int
        //機能     : codesで示されたリスト構造において、引数ｃに格納された文字と同じものが格納されている
        //          ノードの列数を取得する
        //　　　　　 もし引数cに格納された文字と同じものがリスト構造に存在しない場合はNULLを返すこととする
        //使い方例  : int m = getNodeIndex(codes, 'c');
        //          これでデータ部が'ｃ'のノードの列番号(今回の場合3)が取得できればよい