class SampleArray01{
    public static void main(String[] args){
        int scores[];
        
        //�v�f��3�̔z��𐶐�
        //���̎Q�Ƃ�score�ɑ��
        scores = new int[3];

        System.out.println(scores[0]);
        System.out.println(scores[1]);
        System.out.println(scores[2]);
        System.out.println();


        scores[0] = 10;

        System.out.println(scores[0]);
        System.out.println(scores[1]);
        System.out.println(scores[2]);

    }
}