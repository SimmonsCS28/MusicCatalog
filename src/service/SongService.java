package service;

import java.sql.Connection;

import dataAccess.DataQueries;
import dataAccess.MySQL;

public class SongService {

	public static void save() {
		DataQueries.saveToTable();
	}

	public void retrieve() {
		Connection c = MySQL.connect();

		MySQL.close(c);
	}

}
