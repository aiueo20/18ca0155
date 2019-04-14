/*
 *
 */
class DListInsert02Ans {
    static final int NULL = 65535;
    static final int NEXT_P = 0;//�|�C���^���̈Ӗ�-->���̃m�[�h�̗�(�|�C���^�j�Ȃ̂�
    static final int DATA = 1;//�f�[�^���̈Ӗ�
    static final int PREV_P = 2;//���O�̃m�[�h���w���|�C���^��
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
            //codes[NEXT_P][i] == NULL�̎��Ƀ��[�v���I����i�̒l���I�[�m�[�h�̗񐔂ɂȂ��Ă���
            if(codes[NEXT_P][i] == NULL){
                d = i;
            }
        return d;
        }
    }
    static void showListReverse(char[][] codes) {
        //int l = 4;//����̓��X�g�m�[�h��4�ԖڂƂ킩���Ă���̂ŕύX�Ȃ�
        int l = getLastNodeIndex(codes);//������������ăv���O�����Ń��X�g�m�[�h�̗񐔂��擾
        int i = l;
        while (codes[PREV_P][i] != NULL) {
            System.out.print(codes[DATA][i] + " ");
            d = codes[PREV_P][i];
        }
        System.out.println("\n");
    }
    public static void main(String[] args) {
        //�ǂ̃t�@�C�������s���Ă��邩�m�F���邽�߂̕\��
        System.out.println("DListInsert02\n");//�N���X�����擾������@���킩��Ίy���ł���
        char[][] codes = {//2�����z��
            { 2,     4,   5,   1,  NULL,  3,  1111, 2222, 3333, 4444},
            {DUMMY, 'd', 'a', 'c', 'e',  'b',  'Z',  '@',  'X' , ' '},
            { NULL,  3,   0,   5,   1,    2,  1111, 2222, 3333, 4444},
        };

        showListNormal(codes); //�����\���ua b c d e�v�ƕ\������� 
        showListReverse(codes);//�t���\���ue d c b a�v�ƕ\������� 

        //���1�F�擪�m�[�h�Ƀf�[�^����'��'�̃m�[�h��ǉ�����(�K�{)
        //�E�f�[�^����'��'�̃m�[�h�͔z���7��ڂɑ��݂���Ƃ킩���Ă���(����1)
        //�E�g�b�v�A���J�[(�_�~�[)�͔z���0��ڂɑ��݂��邱�Ƃ͂킩���Ă���(����2)
        //�E�}������O�̐擪�m�[�h�̗�ԍ�(�Y��)�̓��X�g�\������擾�ł���(����3)
        int n = 7;  //�f�[�^����'��'�̃m�[�h�̗�ԍ�
        int top = 0;//�g�b�v�A���J�[�m�[�h�̗�ԍ�
        int oldTop = codes[NEXT_P][top];//�}������O�̐擪�m�[�h�̗�ԍ�
        
        //�ȉ��ɑo�������X�g�Ƀm�[�h��ǉ����鎮�����L�q����
        codes[PREV_P][n] = (char)top;
        codes[PREV_P][oldTop] = (char)n;
        codes[NEXT_P][n] = (char)oldTop;
        codes[NEXT_P][top] = (char)n;


        showListNormal(codes); //�����\���u@ a b c d e�v�ƕ\�������
        showListReverse(codes);//�t���\���ue d c b a @�v�ƕ\�������
        //�g�b�v�ɑ}�����g�b�v�A���J�[�i�_�~�[�F�O��ځj�̎��̃m�[�h�ɑ}��������
        //
        //

        //���2�F�f�[�^����'c'�̃m�[�h�̎��Ƀf�[�^�����fX'�̃m�[�h��ǉ�����(�K�{)
        //�E�f�[�^����'X'�̃m�[�h�͔z���8��ڂɑ��݂���Ƃ킩���Ă���(����1)
        //�E�f�[�^����'c'�̃m�[�h���z���3��ڂɑ��݂���Ƃ킩���Ă���(����2)
        //�E�}������O�ɁA�f�[�^����'c'�̃m�[�h�̎��ɂ���m�[�h�̗�ԍ�(�Y��)�̓��X�g�\������擾�ł���(����3)
        int o = 8;//�f�[�^����'X'�̃m�[�h�̗�ԍ�
        int m = codes[PREV_P][3];//�f�[�^����'c'�̃m�[�h�̗�ԍ�
        int oldCNext = 1;//�}������O�́A�f�[�^����'c'�̃m�[�h�̎��̃m�[�h�̗�ԍ�
        

        //�ȉ��ɑo�������X�g�Ƀm�[�h��ǉ����鎮�����L�q����
        codes[PREV_P][o] = (char)m;
        codes[PREV_P][oldCNext] = (char)o;
        codes[NEXT_P][o] = (char)oldCNext;
        codes[NEXT_P][m] = (char)o;


        showListNormal(codes); //�����\���u@ a b c X d e�v�ƕ\������� 
        showListReverse(codes);//�t���\���ue d X c b a @�v�ƕ\�������
    }
}
//End Of FIle
