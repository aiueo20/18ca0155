class Ex0403{
    public static void main(String[] args){
        int average = 0;
        int totalpoint = 0;
        int Tokuten[] = {78, 45, 89, 100, 67};
        String Kamoku[] = {"����","���w","����","�Љ�","�p��"};

        for(int i = 0; i < Tokuten.length; i++){
            System.out.println(Tokuten[i]+ ":" + Kamoku[i]);
        }

        for(int i = 0; i < Tokuten.length; i++){
            totalpoint += Tokuten[i];
        }

        System.out.println("�������_" + ":" + totalpoint);
        System.out.println("���ϓ_" + ":" + (double)totalpoint / Tokuten.length);
    }
}