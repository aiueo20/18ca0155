class Employee{
    private String name;    //����
    private String no;      //�Ј��ԍ�

    void setData(String  name, String no){
        // this.name = name;
        // this.no = no;
        setName(name);
        setNo(no);
    }

    public void setName(String name){
        if(name.isEmpty()){//�󂾂�����True
            throw new IllegalArgumentException("���O����ł�");//���L���ȗ�O�A�C���[�K������@
            //throw�Ŗ����I�ɗ�O�𔭐���������Aif��false�Ȃ琳��ȃR�[�h�ƂȂ�
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

        // e.setData("�R�c���Y", "A001");

        // System.out.println("�����F" + e.name + ",�ԍ��F" + e.no);

        // e.setNo("W009");

        // System.out.println("�����F" + e.name + ",�ԍ��F" + e.no);

        Employee e = new Employee();
        e.setName("");
        e.setNo("X001");

        System.out.println(e.getName() + "," + e.getNo());


    }
}
