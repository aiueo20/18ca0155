/*
 *�������C����ׂ����ύX���������Ƃ��Ƀe�X�g���邱�Ƃ�FastTest�Ƃ���
 *
 */
class ListInsert07 {
    //static���痘�p����ϐ��ɂ�static���K�v
    static final int NULL = 65535;
    static final int NEXT_P = 0;//�|�C���^���̈Ӗ�-->���̃m�[�h�̗�(�|�C���^)������
    static final int DATA = 1;//�f�[�^���̈Ӗ�
    
    static void showListNormal(char[][] codes){
        int i;
        i = 0;
        while (codes[0][i] != NULL) {
            i = codes[0][i];
            System.out.print(codes[1][i]+ " ");
        }
        System.out.println("\n");
    }

    public static void main(String[] args) {
        // public static final int NULL = 65535;
        // public static final int NEXT_P = 0;//�|�C���^���̈Ӗ�-->���̃m�[�h�̗�(�|�C���^)������
        // public static final int DATA = 1;//�f�[�^���̈Ӗ�

        char[][] codes = {//2�����z��
            { 2,        4,   5,   1,   6,  3,    NULL, 2222, 3333, 4444},
            {'\u0000', 'd', 'a', 'c', 'e',  'b',  'Z',  '@',  'X' , ' '},
        };

        int i;

        i = 0;//�ǂ݂₷���Ȃ�����
        while (codes[NEXT_P][i] != NULL) {
            i = codes[NEXT_P][i];
            System.out.print(codes[DATA][i]+ " ");
        }
        System.out.println("\n");

        //���G
        //�擪�̃m�[�h(�g�b�v�̃_�~�[�̎�)�Ƀf�[�^�[����'��'�̃m�[�h��ǉ�
        //�V�����m�[�h�͍���7��ڂɍ��ꂽ���̂Ƃ���(����1)
        //7��ڂ͂킩���Ă�����Ƃ���(����2)
        //�g�b�v�̃_�~�[�m�[�h��0��ڂɂ���(����3)
        int n = 7;//�V�����m�[�h�̗�
        int top = 0;//�g�b�v�̃_�~�[�̗�

        //�����Ƀm�[�h��}������R�[�h���L�q����
        codes[NEXT_P][n] = codes[NEXT_P][top];
        codes[NEXT_P][top] = (char)n;
        //�����ɑ}������ꍇ�Ƒ���񐔂͕ς�炸

        //�A�����X�g��(�_�~�[������)�擪�m�[�h����I�[�m�[�h�܂ŏ��Ƀf�[�^��(�����R�[�h)��\������
        //�����ŁA @ a b c d e Z �ƕ\������Ȃ���΂Ȃ�Ȃ�

        //���\�b�h��showListNormal,����
        //�ړImain����n���ꂽ2�����z������X�g�\���Ƃ��Đ擪���珇�Ƀf�[�^��\��

        showListNormal(codes);
    
        //�X�e�b�v�A�b�v�F
        //�f�[�^��'c'�m�[�h�̎��Ƀf�[�^��'X'�̃m�[�h��ǉ�����ɂ́H

        int o = 8;
        int m = 3;

        codes[0][o] = codes[0][m];
        codes[0][m] = (char)o;

        //�����ŁA @ a b c X d e Z �ƕ\������Ȃ���΂Ȃ�Ȃ�
        i = 0;
        while (codes[0][i] != NULL) {
            i = codes[0][i];
            System.out.print(codes[1][i]+ " ");
        }
        System.out.println("\n");
    
    }
}
//End Of FIle
