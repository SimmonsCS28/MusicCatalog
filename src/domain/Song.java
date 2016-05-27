package domain;

public class Song {

	private int songKey;
	private String name, artist, album, genre, year;

	public Song(int songKey, String year, String name, String artist, String album, String genre) {
		super();
		this.songKey = songKey;
		this.year = year;
		this.name = name;
		this.artist = artist;
		this.album = album;
		this.genre = genre;
	}

	public int getSongKey() {
		return songKey;
	}

	public void setSongKey(int songKey) {
		this.songKey = songKey;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getArtist() {
		return artist;
	}

	public void setArtist(String artist) {
		this.artist = artist;
	}

	public String getAlbum() {
		return album;
	}

	public void setAlbum(String album) {
		this.album = album;
	}

	public String getGenre() {
		return genre;
	}

	public void setGenre(String genre) {
		this.genre = genre;
	}

}
