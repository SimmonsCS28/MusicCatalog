package domain;

public class Song {

	private int songKey;
	private String title, artist, album, genre, year, youtube;

	public Song(int songKey, String year, String name, String artist, String album, String genre) {
		super();
		this.songKey = songKey;
		this.year = year;
		this.title = name;
		this.artist = artist;
		this.album = album;
		this.genre = genre;
	}

	public Song(String year, String name, String artist, String album, String genre, String youtube) {
		this.year = year;
		this.title = name;
		this.artist = artist;
		this.album = album;
		this.genre = genre;
		this.youtube = youtube;
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
		return title;
	}

	public void setName(String name) {
		this.title = name;
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

	public String getYoutube() {
		return youtube;
	}

	public void setYoutube(String youtube) {
		this.youtube = youtube;
	}

}
