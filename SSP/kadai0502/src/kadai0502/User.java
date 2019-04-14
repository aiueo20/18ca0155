package kadai0502;

public class User {
    private String userId;
    private String password;

    public User(String userId, String password) {
        this.userId = userId;
        this.password = password;
    }

    public String getUserId() {
        return this.userId;
    }
    public String getPassword() {
        return this.password;
    }
}
