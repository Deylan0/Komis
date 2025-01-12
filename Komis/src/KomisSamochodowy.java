import java.sql.*;

public class KomisSamochodowy {

    private static final String DB_URL = "jdbc:mysql://localhost:3306/komis_samochodowy";
    private static final String USER = "root";
    private static final String PASSWORD = "";

    public static void main(String[] args) {
        //Połączenie z bazą danych
        try (Connection connection = DriverManager.getConnection(DB_URL, USER, PASSWORD)) {
            System.out.println("Połączono z bazą danych.");
        } catch (SQLException e) {
            System.err.println("Błąd połączenia z bazą danych: " + e.getMessage());
        }
    }
}
