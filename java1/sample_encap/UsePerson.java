class UsePerson{
    public static void main(String[] args){
        Person p = new Person("Hisashi","Murata",20);

        //System.out.println(p.getFirstName() + "," + p.getLastName() + "," + p.getAge());
        System.out.println(p);      //←インスタンスの中身を調べられる

        p.setFirstName("Ichiro");
        p.setLastName("Suzuki");
        p.setAge(42);

        //System.out.println(p.getFirstName() + "," + p.getLastName() + "," + p.getAge());
        System.out.println(p);

        //System.out.println(p.firstName);//privateアクセスコンパイルエラー

        System.out.println(p.getFullName());
    }
}