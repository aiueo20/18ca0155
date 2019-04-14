class Ex0402{
    public static void main(String[] args){
        int data[] = {10, 20, 30, 40, 50};

        System.out.print("コピー元配列");
        for(int i = 0; i < data.length ; i++){
            System.out.print(data[i] + " ");
        }

        System.out.println();

        int copyData[];
        copyData = new int[5];
        System.out.print("コピー先配列");
        for(int i = 0; i < data.length; i++){
            copyData[4 - i] = data[i];
        }
        for(int i = 0; i < data.length; i++){
            System.out.print(copyData[i] + " ");
        }
        
    }
}