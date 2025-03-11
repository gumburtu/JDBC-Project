import org.junit.Assert;
import org.junit.Test;

import java.sql.*;

public class Connection01 {
    @Test
    public void cityTest() throws SQLException {
        //Connection
        String url = "jdbc:postgresql://localhost:5432/myDatabase05";
        String user = "tester05";
        String password = "tester";
        Connection connection = DriverManager.getConnection(url, user, password);
        Statement statement = connection.createStatement();

        //Get city name from cities table
        String sql = "SELECT grade FROM students ORDER BY grade DESC;";
        ResultSet resultset = statement.executeQuery(sql);
        resultset.next();

        int counter = 0;
        while (resultset.next()) {
            counter++;
        }
        //Make sure min 10 city name on the city_name column
        Assert.assertTrue(counter >= 47); //Max Students No

        //Disconnect
        statement.close();
        connection.close();
    }
}
