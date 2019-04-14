class Student{
    private String name;
    private String no;

    public Student(String name, String no){
        this.name = name;
        this.no = no;
    }

    public String getName(){
        return name;
    }

    public String getNo(){
        return no;
    }
}



class SampleAccessor02a{
    public static void main(String[] args){
        Student s = new Student("山田太郎","A001");
        System.out.println("氏名：" + s.getName() + ",番号：" + s.getNo());

        s.no = "W009";
        System.out.println("氏名：" + s.getName() + ",番号：" + s.getNo());
    }
}