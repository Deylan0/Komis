import DATABASE.MysqlCon;
import java.security.SecureRandom;


public class Temp {
    MysqlCon MysqlCon = new MysqlCon();
    public void tempUsers() throws Exception {
        for(int i = 0; i < 500000; i++){
            String query = "INSERT INTO `users`(`name`,`password`) VALUES ('User"+i+"','"+generatePassword()+"')";
            MysqlCon.insert(query);
        }
    }

    private static String generatePassword() {
        final String CHARACTERS = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
        final SecureRandom RANDOM = new SecureRandom();
        StringBuilder password = new StringBuilder(12);
        for (int i = 0; i < 12; i++) {
            password.append(CHARACTERS.charAt(RANDOM.nextInt(CHARACTERS.length())));
        }
        return password.toString();
    }
}
