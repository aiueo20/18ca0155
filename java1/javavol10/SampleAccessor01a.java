class Employee{
    private String name;    //氏名
    private String no;      //社員番号

    void setData(String  name, String no){
        // this.name = name;
        // this.no = no;
        setName(name);
        setNo(no);
    }

    public void setName(String name){
        if(name.isEmpty()){//空だったらTrue
            throw new IllegalArgumentException("名前が空です");//超有名な例外、イリーガル＝違法
            //throwで明示的に例外を発生させられる、ifがfalseなら正常なコードとなる
        }
        this.name = name;
    }

    public void setNo(String no){
        this.no = no;
    }

    public String getName(){
        return name;
    }

    public String getNo(){
        return no;
    }
}

class SampleAccessor01a{
    public static void main(String[] args){
        // Employee e = new Employee();

        // e.setData("山田太郎", "A001");

        // System.out.println("氏名：" + e.name + ",番号：" + e.no);

        // e.setNo("W009");

        // System.out.println("氏名：" + e.name + ",番号：" + e.no);

        Employee e = new Employee();
        e.setName("");
        e.setNo("X001");

        System.out.println(e.getName() + "," + e.getNo());


    }
}
