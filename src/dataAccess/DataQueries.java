package dataAccess;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import domain.Song;

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

	public static ArrayList<Object> retrieveFromTable(String searchInput) throws SQLException {
		Connection myConn = MySQL.connect();
		
		ResultSet resultSet = null;
		Statement statement = null;
		String song = " ", artist = " ", album = " ", year = " ", genre = " ", youtube = " ";
		
		String sql = "SELECT song, artist, album, year, genre FROM songdatabase.songinfo WHERE song = '" + searchInput
				+ "'";
		statement = myConn.createStatement();
		resultSet = statement.executeQuery(sql);
		while (resultSet.next()) {
			song = resultSet.getString("song");
			artist = resultSet.getString("artist");
			album = resultSet.getString("album");
			year = resultSet.getString("year");
			genre = resultSet.getString("genre");
			youtube = "blank";
			
			System.out.println(song + " " + artist + " " + album + " " + year + " " + genre + " " + youtube + " ");
		}
		Song songObject = new Song(song, artist, album, year, genre, youtube);
		myConn.close();
		ArrayList<Object> songResult = new ArrayList<Object>();
		songResult.add(songObject);

		return songResult;
	}
}
