/*
 *
 */
class SSearch01_1 {
    public static void main(String[] args) {
        //destination
        char[] dst = {'f','S','p','o','Q','F','j','i','S',};

        char src = 'S';

        // int i;
        // i = 0;
        // while(dst[i] != src){
        //     i++;
        //     if(dst[i] == src){
        //         System.out.println(src + "��dst�z���" + i + "�Ԗڂɑ��݂��܂�");
        //         break;
        //     }
        // }

        // i = 0;
        // while(dst[i] != src){
        //     i++;
        //     if(i == dst.length){
        //         System.out.println(src + "��dst�z��ɑ��݂��܂���");
        //         break;
        //     }
        // }

        int d;
        for(d = 0; d < dst.length; d++){
            if(dst[d] == src){
                System.out.println(src + "��dst�z���" + d + "�Ԗڂɑ��݂��܂�");
            }
        }

        // int e;
        // for(e = 0; e < dst.length; e++){
        //     if(dst[e].equalsIgnoreCase(src)){
        //         System.out.println(src + "��dst�z���" + e + "�Ԗڂɑ��݂��܂�");
        //     }
        // }

    }
}
//End Of FIle

        //���1�Fdst�z��̒��ɂ���L�����N�^�[�R�[�h�Q������
        //    src�ϐ��Ɋi�[���ꂽ�L�����N�^�[�R�[�h�Ɠ������̂��z��̉��Ԗڂɂ��邩
        //    ���ׁA���̌��ʂ��u�H ��dst�z��� �H�Ԗڂɑ��݂��܂��v�̌`���ŕ\������

        // �X�e�b�v�A�b�v1:����dst�z��ɑ��݂��Ȃ��ꍇ�����R�[�h(�Ⴆ��'A')��src�ϐ��Ɋi�[�����ꍇ
        //             �u�H ��dst�z��ɑ��݂��܂���v�ƃG���[���b�Z�[�W�\������v���O�����ɉ��ǂ���
        //             ����L�v���O�����ł�java.lang.ArrayIndexOutOfBoundsException��O������
        //               ���邪�A���̃��b�Z�[�W��\�������Ȃ��l�ɂ���
        //             ���q���g:
        // ���X�e�b�v�A�b�v2:dst�z��ɂ�'S'��2�J�����݂���̂ŁAsrc�ϐ��ɁfS'���i�[�����ꍇ
        //             ��L�v���O�����ł�
        //             �uS ��dst�z��� 1�Ԗڂɑ��݂��܂��v
        //             �Ƃ����\������邾���ł���B��������ǂ�
        //             �uS ��dst�z��� 1�Ԗڂɑ��݂��܂��v
        //             �uS ��dst�z��� 8�Ԗڂɑ��݂��܂��v
        //              �ƑS�ĕ\������v���O�����ɉ��ǂ���
        //�@�@�@�@�@�@�@�@�@���q���g : dst�z��Ɠ����v�f����int�^�z���錾��
        //                      ���̔z��̊e�v�f�ɁA���������Y���ԍ����i�[����Ƃ����̂͂ǂ����낤
        //                      �Ȃ��Adst�z��ɑ��݂��Ȃ��ꍇ�̃G���[���b�Z�[�W���������\�������邱��

        // ���X�e�b�v�A�b�v3:dst�z��̃L�����N�^�[�R�[�h�̑啶���Ə���������ʂ����Ɍ���(�T�[�`)����
        //              src�ϐ��ɂ͑啶�����i�[����Ă����������i�[����Ă����������삳����
        //�q���g�F�������͂��낢�날��
        //�啶���Ƃ�'A'  <=�i���傤�Ȃ肢���[��j  dst[?]   &&  dst[?] <= 'Z'
        //�������Ƃ�'a' <= dst[?] && dst[?] <= 'z'�Ő^
        //�啶�����������ɕϊ�����
        //dst[?] = dst[?] + ('a' - 'A')
        //��������啶���ɕϊ�����
        //dst[?] = dst[?] - ('a' - 'A')
        //��U��r���镶����啶�����������̂����ꂩ�ɕϊ����Ă����r�����OK�I
        //unicode�ő啶���������𔻒f����