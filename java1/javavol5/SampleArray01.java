class SampleArray01{
    public static void main(String[] args){
        int scores[];
        
        //要素数3の配列を生成
        //その参照をscoreに代入
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