/*
 *
 */
class ListInsert04 {
    public static void main(String[] args) {
        final int NULL = 65535;
        
        char[][] codes = {//�񎟌��z��
            { 2,        4,   5,   1,   NULL, 3,  1111, 2222, 3333, 4444},
            { '\u0000','d', 'a', 'c', 'e', 'b', 'Z',  ' ',  ' ',  ' '},//�g�b�v�Ƀ_�~�[�������Ă�
        };
        //�|�C���^�����̃m�[�h�i�ꎟ�̗�j���w�����[���ɏ]����
        //��[���珇�Ԓʂ�ɕ��ׂȂ��Ă�OK

        int i;
        i = 0;//�g�b�v�̃m�[�h�i�_�~�[�j��\����
        while (codes[0][i] != NULL) {//�I�[�m�[�h����Ȃ�������^(true)
            i = codes[0][i];//�|�C���^���̃|�C���^�i���̃m�[�h��̓Y�����j��i���X�V
            //�z��̏ꍇ��i��++���邪�A���X�g�\���̓|�C���^���̏����g���čX�V
            System.out.print(codes[1][i]+ " ");

        }
        System.out.println("\n");

        //�Ō�̃m�[�h�̎��Ƀf�[�^����'Z'�̃m�[�h��ǉ�
        //�V�����m�[�h�͍���6��ڂɍ��ꂽ���̂Ƃ���(����1)
        //6��ڂ͂킩���Ă�����Ƃ���(����2)
        //�Ō�̃m�[�h��4��ڂƂ킩���Ă�����̂Ƃ���(����3:�z��ƍ��킹������)

        int n = 6;//�V�����m�[�h�̗�
        int last = 4;//�I�[�m�[�h�̗�

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
