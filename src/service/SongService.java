package service;

import java.sql.SQLException;

import dataAccess.DataQueries;

public class SongService {

	public static void save(int songKey, String year, String name, String artist, String album, String genre) {
		DataQueries.saveToTable(songKey, year, name, artist, album, genre);

	}

	public static void retrieve(String searchEntry) throws SQLException {
		DataQueries.retrieveFromTable(searchEntry);
	}

}
