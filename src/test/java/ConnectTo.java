import org.junit.Assert;
import org.junit.Test;

import java.sql.*;

public class ConnectTo {
    @Test
    public void studentGrade() throws SQLException {
        //Connection
        String url = "jdbc:postgresql://localhost:5432/myDatabase05";
        String user = "tester05";
        String password = "tester";
        Connection connection = DriverManager.getConnection(url, user, password);
        Statement statement = connection.createStatement();

        //Get Grade from grade table
        String sql = "SELECT grade FROM students ORDER BY grade DESC;";
        ResultSet resultset = statement.executeQuery(sql);
        resultset.next();

        /*String sql1 = "SELECT COUNT(grade) FROM students;";
        ResultSet resultSet1 = statement.executeQuery(sql1);
        resultSet1.next();*/

        int counter = 0;
        while (resultset.next()) {
            counter++;
        }
        //Make sure min 47 students on the grade column
        Assert.assertTrue(counter >= 47); //Max Students No

        //Disconnect
        statement.close();
        connection.close();
    }

    @Test
    public void studentGrade1() throws SQLException {
        //Connection
        String url = "jdbc:postgresql://localhost:5432/myDatabase05";
        String user = "tester05";
        String password = "tester";
        Connection connection = DriverManager.getConnection(url, user, password);
        Statement statement = connection.createStatement();

        //Get city name from cities table
        String sql1 = "SELECT COUNT(grade) FROM students;";
        ResultSet resultSet1 = statement.executeQuery(sql1);
        resultSet1.next();
        int actualData = resultSet1.getInt("COUNT");

        //Make sure min 47 students on the grade column
        Assert.assertTrue(actualData >= 47);

        //Disconnect
        statement.close();
        connection.close(); //All connections are closed
    }
}
