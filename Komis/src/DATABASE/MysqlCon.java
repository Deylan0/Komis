package DATABASE;

import java.sql.*;

public class MysqlCon {

    private static final String url = "jdbc:mysql://localhost:3306/komis";
    private static final String user = "root";
    private static final String password = "";

    public String select(String query) {
        return "none";
    }

    public void insert(String query) throws Exception {
        Connection connection = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(url, user, password);
            Statement statement;
            statement = connection.createStatement();
            int resultSet;
            resultSet = statement.executeUpdate(query);
            if(resultSet == 1){
                System.out.println("successfully created account");
            }else{
                System.out.println("error:");
            }
            statement.close();
            connection.close();

        }catch (Exception exception){
            System.out.println(exception);
        }
    }

}