class Ex0403{
    public static void main(String[] args){
        int average = 0;
        int totalpoint = 0;
        int Tokuten[] = {78, 45, 89, 100, 67};
        String Kamoku[] = {"国語","数学","理科","社会","英語"};

        for(int i = 0; i < Tokuten.length; i++){
            System.out.println(Tokuten[i]+ ":" + Kamoku[i]);
        }

        for(int i = 0; i < Tokuten.length; i++){
            totalpoint += Tokuten[i];
        }

        System.out.println("総合得点" + ":" + totalpoint);
        System.out.println("平均点" + ":" + (double)totalpoint / Tokuten.length);
    }
}