public class User {
    private String userId;
    private String password;

    public User(String userId, String password) {
        this.userId = userId;
        this.password = password;
    }
    String getUserId() {
        return this.userId;
    }
    String getPassword() {
        return this.password;
    }
}
