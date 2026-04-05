import java.sql.*;

public class TestDB {
    public static void main(String[] args) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/adubus_db", "root", "1234");
            Statement s = con.createStatement();
            ResultSet rs = s.executeQuery("SELECT * FROM users");
            while (rs.next()) {
                System.out.println("ID: " + rs.getInt("id") + 
                                   ", Name: " + rs.getString("name") + 
                                   ", Email: " + rs.getString("email") + 
                                   ", Pass: " + rs.getString("password") + 
                                   ", Role: '" + rs.getString("role") + "'");
            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
