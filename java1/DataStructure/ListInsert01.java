/*
 *
 */
class ListInsert01 {
    public static void main(String[] args) {
        char[][] codes = {//�񎟌��z��
            { 1,   2,   3,   4,   5,   65535,    1111},
            {'a', 'b', 'c', 'd', 'e',  '\u0000', ' '},
        };
        

        int i;

        i = 0;
        while (codes[0][i] != 65535) {//�I�[�m�[�h����Ȃ�������^(true)
            System.out.print(codes[1][i]+ " ");
            i = codes[0][i];//�|�C���^���̃|�C���^�i���̃m�[�h��̓Y�����j��i���X�V
            //�z��̏ꍇ��i��++���邪�A���X�g�\���̓|�C���^���̏����g���čX�V
        }
        System.out.println("\n");//PowerShell�̉��s
    }
}
//End Of FIle
