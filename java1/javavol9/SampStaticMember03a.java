class Student{
    static String name;
    static String no;
    static void showInfo(){
        System.out.println("�����F" + name);
        System.out.println("�ԍ��F" + no);
    }
}

class SampStaticMember03a{
    public static void main(String[] args){
        Student s1 = new Student();
        s1.name = "Tanaka";
        s1.no = "A001";
        System.out.println(s1.name + "," + s1.no);

        Student s2 = new Student();
        s2.name = "Murata";
        s2.no = "A002";
        System.out.println(s1.name + "," + s1.no);
        System.out.println(s2.name + "," + s2.no);

        Student s3 = null;
        System.out.println(s3.name + "," + s3.no);//Student.name�ɒu��������Ă���
        //s1��s2�͓����������A�h���X���Q�Ƃ��Ă���
    }
}