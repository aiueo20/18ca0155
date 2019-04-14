/*
 *�������C����ׂ����ύX���������Ƃ��Ƀe�X�g���邱�Ƃ�FastTest�Ƃ���
 *
 */
class DListInsert01 {
    //static���痘�p����ϐ��ɂ�static���K�v
    static final int NULL = 65535;
    static final int NEXT_P = 0;//�|�C���^��
    static final int DATA = 1;//�f�[�^��
    static final int PREV_P = 2;//���O�̃m�[�h���w���|�C���^��
    static final int DUMMY = '\u0000';
    
    static void showListReverse(char[][] codes){
        int l = 5;
        int i = l;
        //2�s�A3�s���������Ă���
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
        //�ǂ̃t�@�C�������s���Ă��邩�m�F���邽�߂̕\��
        System.out.println("DListInser01\n");//�N���X�����擾������@���킩��Ίy���ł���
        char[][] codes = {
            { 1,     2,  3,  4,  5, NULL,1111, 2222, 3333, 4444},
            {DUMMY, 'a','b','c','d','e',  'Z',  '@',  'X' , ' '},
            {NULL,   0,  1,  2,  3,  4,  1111, 2222,  3333, 4444}//���́u,�v�͏����Ă������Ȃ��Ă�����
        };
    
        showListNormal(codes);

        //���K�F�o�������X�g�\���̍Ō���̃m�[�h����擪�̏���
        //�f�[�^����\������
        //�������A�Ō���̃m�[�h�͗�ԍ���5�Ƃ킩���Ă���Ƃ���
        //�܂���main�ŋL�q--->���\�b�h�ɕ�������
        showListReverse(codes);
    }
}
//End Of FIle
