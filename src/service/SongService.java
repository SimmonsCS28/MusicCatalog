package service;

import java.sql.Connection;

import dataAccess.DataQueries;
import dataAccess.MySQL;

public class SongService {

	public static void save(int songKey, String year, String name, String artist, String album, String genre) {
		DataQueries.saveToTable(songKey, year, name, artist, album, genre);

	}

	public void retrieve() {
		
	}

}
