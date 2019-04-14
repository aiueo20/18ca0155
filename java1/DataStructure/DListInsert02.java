class DListInsert02 {
    static final int NULL = 65535;
    static final int NEXT_P = 0;//�|�C���^��
    static final int DATA = 1;//�f�[�^��
    static final int PREV_P = 2;//���O�̃m�[�h���w���|�C���^��
    static final int DUMMY = '\u0000';
    static int d = 0;
    static int endNum; //�h��1
    static char c; //�h��2
    static int count; //�h��2
    static int i; 

    static void showListReverse(char[][] codes){
        getLastNodeIndex(codes);
        System.out.println("codes�z��̏I�[�m�[�h�񐔂�" + endNum);

        int l = 4;
        int i = l;
        //2�s�A3�s���������Ă���
        while(codes[PREV_P][i] != NULL){
            System.out.print(codes[DATA][i] + " ");
            i = codes[PREV_P][i];
        }
        System.out.println("\n");
    }

    static void showListNormal(char[][] codes){
        int l = 4;  //4����J�n
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
        
        System.out.println("����c�Ɋi�[���ꂽ���Ɠ����񐔂�" + getNodeIndex(codes,c));

        int n = 7;      //�f�[�^����'��'�̃m�[�h�̗�ԍ�
        int top = 0;    //�g�b�v�A���J�[�m�[�h�̗�ԍ�

        codes[0][7] = (char)2;
        codes[0][top] = (char)n;
        codes[2][2] = (char)n;
        codes[2][n] = (char)0;

        showListNormal(codes);
        showListReverse(codes);

        int o = 8;      //�f�[�^����'X'�̃m�[�h�̗�ԍ�
        int m = 3;      //�f�[�^����'c'�̃m�[�h�̗�ԍ�
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
        //�X�e�b�v�A�b�v1:�ȉ��̃��\�b�h�쐬���AshowListReverse���\�b�h���ŌĂяo��
        //���\�b�h�� : getLastNodeIndex
        //����     : char[][] codes
        //�߂�l�^  : int
        //�@�\     : codes�Ŏ����ꂽ���X�g�\���̏I�[�m�[�h�̗񐔂��擾����

        //�X�e�b�v�A�b�v2:�ȉ��̃��\�b�h�쐬��main�Ăяo��
        //���\�b�h�� : getNodeIndex
        //����     : char[][] codes, char c
        //�߂�l�^  : int
        //�@�\     : codes�Ŏ����ꂽ���X�g�\���ɂ����āA�������Ɋi�[���ꂽ�����Ɠ������̂��i�[����Ă���
        //          �m�[�h�̗񐔂��擾����
        //�@�@�@�@�@ ��������c�Ɋi�[���ꂽ�����Ɠ������̂����X�g�\���ɑ��݂��Ȃ��ꍇ��NULL��Ԃ����ƂƂ���
        //�g������  : int m = getNodeIndex(codes, 'c');
        //          ����Ńf�[�^����'��'�̃m�[�h�̗�ԍ�(����̏ꍇ3)���擾�ł���΂悢