class SampleArray06{
    public static void main(String[] args){
        //得点一覧
        int[] scores = {89, 56, 24};

        //総合得点
        int total = 0;
        //平均点
        double avg;

        //平均点の計算
        for(int i = 0; i < scorse.length; i++){
            total += scores[i];
        }
        avg = (double)total / scores.length;

        //平均点の表示
        System.out.println("平均点：" + avg);
    } 
}