class Ex0405{
    public static void main(String[] args){
        int[] point = {78, 45, 89, 100, 67, 88, 92, 32, 92, 80};
        int max;
        int low;

        max = 0;
        low = 100;

        for(int i = 0; i < point.length; i++){
            if(max < point[i]){
                max = point[i];
            }else if(low > point[i]){
                low = point[i];
            }
        }
        System.out.println("ç≈çÇì_:" + max + "\n" + "ç≈çÇì_" + low);
    }
}