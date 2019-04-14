public class Person {
    private String firstName;   //名
    private String lastName;    //苗字
    private int age;            //年齢

    //セッターゲッター使わないで名、苗字、年齢を取得しセットする
    public Person(String firstName, String lastName, int age){
        this.firstName = firstName;
        this.lastName = lastName;
        this.age = age;
    }

    //名を取得しセットする
    public String getFirstName(){
        return this.firstName;
    }

    public void setFirstName(String firstName){
        this.firstName = firstName;     //フィールドのfirstNameにセット
    }
    //苗字を取得しセットする
    public String getLastName(){
        return this.lastName;
    }

    public void setLastName(String lastName){
        this.lastName = lastName;
    }
    //年齢を取得しセットする
    public int getAge(){
        return this.age;
    }

    public void setAge(int age){
        this.age = age;
    }

    //氏名を取得する
    public String getFullName(){
        return firstName + " " + lastName;
    }

    //個人情報一覧を取得する
    @Override   //アノテーション、Overrideできてるかどうかチェック
    public String toString(){
        return "[" + firstName + "," + lastName + "," + age + "]";
    }
}