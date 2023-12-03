package Context;

import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBContext {

//    private static final String serverName = "localhost";
    private static final String serverName = "localhost";
    private static final String dbName = "FunitureDB";
    private static final String portNumber = "1433";
    private static final String instance = "";
    private static final String userID = "sa";
    private static final String password = "sa";
//    private static final String url = "jdbc:sqlserver://DESKTOP-DQ7JCCD\\SQLEXPRESS;databaseName=FunitureDB;user=sa;password=sa;encrypt=true;trustServerCertificate=true";
    public DBContext() {
    	try {
    		 String url = "jdbc:sqlserver://" + serverName + ":" + portNumber + "\\" + instance + ";databaseName=" + dbName;
//    		 String url = "jdbc:sqlserver://" + serverName + ":" + ";databaseName=" + dbName + ";user=sa;password=sa;encrypt=true;trustServerCertificate=true";
    		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
    		Connection connection = DriverManager.getConnection(url);
    		System.out.println("success");
    	} catch (Exception e){
    		System.out.println("loi roi");
    	}
    }
//	public static Connection getConnection() throws ClassNotFoundException, SQLException {
//		String url = "jdbc:sqlserver://" + serverName + ":" + portNumber + "\\" + instance + ";databaseName=" + dbName;
//		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
//		return DriverManager.getConnection(url);
//	}
	

    public static Connection getConnection() throws ClassNotFoundException {
        String url = "jdbc:sqlserver://" + serverName + ":" + portNumber + "\\" + instance + ";databaseName=" + dbName;
        if (instance == null || instance.trim().isEmpty()) {
            url = "jdbc:sqlserver://" + serverName + ":" + portNumber + ";databaseName=" + dbName + ";encrypt=true;trustServerCertificate=true;";
        }
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        Connection connection = null;
        try {
            connection = DriverManager.getConnection(url, userID, password);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        System.out.println("Connected to the database.");
        return connection;
    }
//
    public static void printInfo(Connection connection){
        try {
            if (connection!=null){
                DatabaseMetaData mtdt = connection.getMetaData();
                System.out.println(mtdt.getDatabaseProductName());
                System.out.println(mtdt.getDatabaseProductVersion());
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
//
    public static void closeConnection(Connection connection) {
        try {
            if (connection != null && !connection.isClosed()) {
                connection.close();
                System.out.println("Connection closed.");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static void main(String[] args) throws ClassNotFoundException, SQLException {
        Connection connection = getConnection();
        printInfo(connection);
        closeConnection(connection);
    }
}
