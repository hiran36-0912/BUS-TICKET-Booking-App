import java.sql.*;
import java.nio.file.*;

public class InitDB {
    public static void main(String[] args) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/", "root", "1234");
            Statement s = con.createStatement();
            
            // Read and execute schema.sql
            String content = new String(Files.readAllBytes(Paths.get("schema.sql")));
            String[] queries = content.split(";");
            for (String query : queries) {
                if (query.trim().length() > 0) {
                    s.execute(query);
                }
            }
            con.close();
            System.out.println("Database successfully initialized!");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
