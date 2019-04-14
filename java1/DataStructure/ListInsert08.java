/*
 *�������C����ׂ����ύX���������Ƃ��Ƀe�X�g���邱�Ƃ�FastTest�Ƃ���
 *
 */
class ListInsert08 {
    //static���痘�p����ϐ��ɂ�static���K�v
    static final int NULL = 65535;
    static final int NEXT_P = 0;//�|�C���^��
    static final int DATA = 1;//�f�[�^��
    static final int DUMMY = '\u0000';
    
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

        char[][] codes = {
            { 2,        4,   5,   1,   6,  3,    NULL, 2222, 3333, 4444},
            {DUMMY, 'd', 'a', 'c', 'e',  'b',  'Z',  '@',  'X' , ' '},
        };

        int i = 0;
        int n = 7;
        int top = 0;

        codes[NEXT_P][n] = codes[NEXT_P][top];
        codes[NEXT_P][top] = (char)n;

        showListNormal(codes);

        int o = 8;
        int m = 3;

        codes[0][o] = codes[0][m];
        codes[0][m] = (char)o;
        
        showListNormal(codes);
    
    }
}
//End Of FIle
