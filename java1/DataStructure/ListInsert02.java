/*
 *
 */
class ListInsert02 {
    public static void main(String[] args) {
        final int NULL = 65535;//NULL��65535�ƒ�`����
        //��`�ϐ��̐錾�iJava�̋@�\�A�萔�ϐ����͈�ʂɑ啶���Œ�`�i�X�l�[�N�P�[�X�j
        char[][] codes = {//�񎟌��z��
            { 1,   2,   3,   4,   5,   NULL,    1111},
            { '\u0000','a', 'b', 'c', 'd', 'e', ' '},//�g�b�v�Ƀ_�~�[�������Ă�
        };

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
