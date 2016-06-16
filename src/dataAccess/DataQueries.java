package dataAccess;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DataQueries {

	public static void saveToTable(int songKey, String year, String name, String artist, String album, String genre) {

		try {
			Connection myConn = MySQL.connect();
			PreparedStatement preparedStatement = null;
			String sql = "INSERT INTO songinfo (idSongKey, song, artist, album, year, genre) "
					+ "values (?,?,?,?,?,?);";
			preparedStatement = myConn.prepareStatement(sql);
			preparedStatement.setInt(1, songKey);
			preparedStatement.setString(2, name);
			preparedStatement.setString(3, artist);
			preparedStatement.setString(4, album);
			preparedStatement.setString(5, year);
			preparedStatement.setString(6, genre);

			preparedStatement.executeUpdate();
			preparedStatement.close();
			System.out.println(name);

		} catch (Exception e) {

		}
	}
	
	public static void retrieveFromTable(String searchInput) throws SQLException{
		Connection myConn = MySQL.connect();
		ResultSet resultSet = null;
		PreparedStatement preparedStatement = null;
		Statement statement = null;
		String sql = "SELECT song, artist, album, year, genre FROM songdatabase.songinfo WHERE song = '"+searchInput+"'";
		statement = myConn.createStatement();
		resultSet = statement.executeQuery(sql);
		while (resultSet.next()){
		String result = resultSet.getString("song");
		System.out.println(result);
		}
		myConn.close();
	}
}
