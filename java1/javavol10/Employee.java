class Employee{
    private String name;
    private String no;

    void setData(String name, String no){
        this.name = name;
        this.no = no;
        //setName(name);
        //setNo(no);
    }
}

class SampleAccessor01{
    public static void main(String[] arsg){
        Employee e = new Employee();
        e.setData("山田太郎","A001");
        System.out.println("氏名：" + e.getName() + ",")
    }
}