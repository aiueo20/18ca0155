class Student{
    static String name;
    static String no;
}

class SampleStaticMember01{
    public static void main(String[] args){
        Student.name = "Tanaka";
        Student.no = "09xx0101";

        System.out.println("�����F" + Student.name);
        System.out.println("�ԍ��F" + Student.no);
    }
}