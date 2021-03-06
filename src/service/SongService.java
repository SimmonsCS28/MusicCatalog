package service;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Random;
import dataAccess.DataQueries;

public class SongService {

	public static void save(String year, String name, String artist, String album, String genre, String youtube) {
		Random gen = new Random();
		int songKey = gen.nextInt(5000);
		DataQueries.saveToTable(songKey, year, name, artist, album, genre, youtube);

	}

	public static ArrayList<Object> catalogSearch(String searchEntry, String searchFilter) throws SQLException {
		return DataQueries.searchTable(searchEntry, searchFilter);
	}

	public static ArrayList<Object> catalogRetrieval() throws SQLException {
		return DataQueries.retrieveAll();
	}

}
