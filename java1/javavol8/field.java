class field{
    // ����f��ق̓��ٗ�����1500�~�ł��A���̉f��ق̗����̌n���ȉ��ł�
    // �����܂��͖����N�̐l��500�~��
    // ���j���̂��ׂĂ̐l��500�~��
    // ��1 �����A���l�A���j���@���@1000
    // ��2 �����A�����N�A���j���@���@1000
    // ��3 �j���A�����N�A���j���@���@1000
    // ��4 �����A�����N�A���j���@���@1000
    // ���̉f��ق̗����v�Z�̃v���O�������쐬
    // ���쐬������
    // �E���ʁFgender,�N��Fage,�j���FdayOfweek
    // �Estatic���\�b�h�AisDiscount���쐬����
    //         ���\�b�h���FisDiscount
    //         �������X�g�F�i�N��A���ʁA�j���j
    //         �߂�l�̕��Fboolean     *true...����,false...�����Ȃ�

    // �Estatic���\�b�h�AcalculatePayment���쐬����
    //         ���\�b�h���FcalculatePayment
    //         �������X�g�F�i�艿�j
    //         �߂�l�̕��Fint�u�x���������v

    static void int theaterFee = 1500;

    public static void main(String[] args){
        int age = 20;
        int gender = 1; //0�Ȃ�j���A1�Ȃ珗��
        int dayOfweek = 3; //3�Ȃ琅�j��

        if(isDiscount(age,gender,dayOfweek)){
            System.out.println(calculatePayment(theaterFee));
        }else{
            System.out.println(calculatePayment());
        }
        
    }

    static boolean isDiscount(int age, int gender, int dayOfweek){
        //�������\�b�h
        if(age = 20 || gender = 1 || dayOfweek = 3){
            return true;
        }else{
            return false;
        }
    }

    static void calculatePayment(int price){
        //�����v�Z���\�b�h
        if(isDiscount(age,gender,dayOfweek)){
            theaterFee -= 500;
            return theaterFee;
        }else{
            return theaterFee;
        }
    }
}