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
        e.setData("�R�c���Y","A001");
        System.out.println("�����F" + e.getName() + ",")
    }
}