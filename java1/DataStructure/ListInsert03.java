/*
 *
 */
class ListInsert03 {
    public static void main(String[] args) {
        final int NULL = 65535;
        
        char[][] codes = {//�񎟌��z��
            { 2,        4,   5,   1, NULL, 3,  1111},
            { '\u0000','d', 'a', 'c', 'e', 'b', ' '},//�g�b�v�Ƀ_�~�[�������Ă�
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
        System.out.println("\n");//PowerShell�̉��s
    }
}
//End Of FIle
