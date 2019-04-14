public class Person {
    private String firstName;   //��
    private String lastName;    //�c��
    private int age;            //�N��

    //�Z�b�^�[�Q�b�^�[�g��Ȃ��Ŗ��A�c���A�N����擾���Z�b�g����
    public Person(String firstName, String lastName, int age){
        this.firstName = firstName;
        this.lastName = lastName;
        this.age = age;
    }

    //�����擾���Z�b�g����
    public String getFirstName(){
        return this.firstName;
    }

    public void setFirstName(String firstName){
        this.firstName = firstName;     //�t�B�[���h��firstName�ɃZ�b�g
    }
    //�c�����擾���Z�b�g����
    public String getLastName(){
        return this.lastName;
    }

    public void setLastName(String lastName){
        this.lastName = lastName;
    }
    //�N����擾���Z�b�g����
    public int getAge(){
        return this.age;
    }

    public void setAge(int age){
        this.age = age;
    }

    //�������擾����
    public String getFullName(){
        return firstName + " " + lastName;
    }

    //�l���ꗗ���擾����
    @Override   //�A�m�e�[�V�����AOverride�ł��Ă邩�ǂ����`�F�b�N
    public String toString(){
        return "[" + firstName + "," + lastName + "," + age + "]";
    }
}