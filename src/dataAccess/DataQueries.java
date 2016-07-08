package dataAccess;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import domain.Song;

public class DataQueries {

	public static void saveToTable(int songKey, String year, String name, String artist, String album, String genre, String youtube) {

		try {
			Connection myConn = MySQL.connect();
			PreparedStatement preparedStatement = null;
			String sql = "INSERT INTO songinfo (idSongKey, song, artist, album, year, genre, youtube) "
					+ "values (?,?,?,?,?,?,?);";
			preparedStatement = myConn.prepareStatement(sql);
			preparedStatement.setInt(1, songKey);
			preparedStatement.setString(2, name);
			preparedStatement.setString(3, artist);
			preparedStatement.setString(4, album);
			preparedStatement.setString(5, year);
			preparedStatement.setString(6, genre);
			preparedStatement.setString(7, youtube);

			preparedStatement.executeUpdate();
			preparedStatement.close();
			System.out.println(name);

		} catch (Exception e) {

		}
	}

	public static ArrayList<Object> searchTable(String searchInput, String searchFilter) throws SQLException {
		Connection myConn = MySQL.connect();

		ResultSet resultSet = null;
		Statement statement = null;
		ArrayList<Object> songResult = new ArrayList<Object>();
		String song = " ", artist = " ", album = " ", year = " ", genre = " ", youtube = " ";
		String sql = " ";

		if (searchFilter.equalsIgnoreCase("none")) {
			sql = "SELECT * FROM songdatabase.songinfo;";
			statement = myConn.createStatement();
			resultSet = statement.executeQuery(sql);
			while (resultSet.next()) {
				if (resultSet.getString("song").equalsIgnoreCase(searchInput)
						|| resultSet.getString("artist").equalsIgnoreCase(searchInput)
						|| resultSet.getString("album").equalsIgnoreCase(searchInput)
						|| resultSet.getString("year").equalsIgnoreCase(searchInput)
						|| resultSet.getString("genre").equalsIgnoreCase(searchInput)) {
					song = resultSet.getString("song");
					artist = resultSet.getString("artist");
					album = resultSet.getString("album");
					year = resultSet.getString("year");
					genre = resultSet.getString("genre");
					youtube = "blank";
					System.out.println(
							song + " " + artist + " " + album + " " + year + " " + genre + " " + youtube + " ");
					Song songObject = new Song(song, artist, album, year, genre, youtube);
					songResult.add(songObject);
				}
			}
		} else {
			sql = "SELECT song, artist, album, year, genre FROM songdatabase.songinfo WHERE " + searchFilter + " = '"
					+ searchInput + "'";
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
				Song songObject = new Song(song, artist, album, year, genre, youtube);
				songResult.add(songObject);
			}
		}
		myConn.close();
		return songResult;
	}

	public static ArrayList<Object> retrieveAll() throws SQLException {
		Connection myConn = MySQL.connect();

		ResultSet resultSet = null;
		Statement statement = null;
		ArrayList<Object> catalog = new ArrayList<Object>();
		String song = " ", artist = " ", album = " ", year = " ", genre = " ", youtube = " ";

		String sql = "SELECT * FROM songdatabase.songinfo;";

		statement = myConn.createStatement();
		resultSet = statement.executeQuery(sql);
		while (resultSet.next()) {
			song = resultSet.getString("song");
			artist = resultSet.getString("artist");
			album = resultSet.getString("album");
			year = resultSet.getString("year");
			genre = resultSet.getString("genre");
			youtube = resultSet.getString("youtube");
			Song songObject = new Song(song, artist, album, year, genre, youtube);
			catalog.add(songObject);
		}

		myConn.close();
		return catalog;
	}
}
