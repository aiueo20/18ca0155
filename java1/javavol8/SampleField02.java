class SampleField02{
    static double discount = 0.7;

    final static int SPRING = 0;
    final static int SUMMER = 1;
    final static int AUTUMN = 2;
    final static int WINTER = 3;

    public static void main(String[] args){
        
        //�t 0, �� 1,�H 2,�~ 3

        //�q�󗿋�
        int fee = 10000;

        //�ĂƓ~��10000�~
        //�t�ƏH�̏ꍇ�́A������30%�I�t�ɂȂ�
        int season = 0;
        //0~3�܂œ����Ă�Ɖ��肷��

        fee = calculateFee(fee, season);
        System.out.println("�x��������" + fee + "�~");


        //case�̉��ɂ͂ӂ��ϐ��͂��Ȃ����Afinal�̕ϐ��̂ݎg����A�l���ς��Ȃ�����
        switch(season){ //fee�ł͂Ȃ�season�i�����ς�
            case SPRING:
                fee = (int)(fee - fee * discount);
                break;
            case SUMMER:
                break;
            case AUTUMN:
                fee = (int)(fee - fee * discount);
            case WINTER:
                break;
        }
    }

    //season == 0 || season == 2���ƁA0��2���Ȃɂ��킩��Ȃ�����C��������
    static int calculateFee(int fee,int season){
        if (season == SPRING || season == AUTUMN){
            fee = (int)(fee *= discount);
        }
        return fee;
    }

}