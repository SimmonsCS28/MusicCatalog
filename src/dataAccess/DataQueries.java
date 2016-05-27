package dataAccess;

import java.sql.Statement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DataQueries {

	static Statement stmt = null;
	static boolean rs;

	public static void saveToTable() {
		try {
			Connection myConn = MySQL.connect();
			stmt = myConn.createStatement();
			String sql = "INSERT INTO songinfo (idSongKey, song, artist, album, year, genre) "
					+ "values (1, 'Mayhem', 'Halestorm', 'Something', 2016, 'Hard Rock');";
			rs = stmt.execute(sql);
			rs = stmt.getResultSet() != null;
		} catch (Exception e) {

		}

		finally {
			MySQL.close(null);
			try {
				stmt.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

}
