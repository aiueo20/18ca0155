package ex0307.Sub;//右クリ→パッケージで作成したパスが自動的に追加される(Eclipseの機能

public class User {
    private String userId;
    private String password;

    //コンストラクタ(初期設定用に使う、戻り値を書かない）
    public User(String userId, String password) {
        this.userId = userId;
        this.password = password;
    }
    //publicにすると別パッケージからもアクセス可能
    public String getUserId() {//デフォルトアクセス（publicなし）だと別クラスでインスタンス化しても使うことができない
        return this.userId;
    }
    public String getPassword() {
        return this.password;
    }
}
