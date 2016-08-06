package model;

public class Games {
	private int id_Game;
	private String game_Title;
	private double price;
	private String image;
	public Games() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Games(int id_Game, String game_Title, double price, String image) {
		super();
		this.id_Game = id_Game;
		this.game_Title = game_Title;
		this.price = price;
		this.image = image;
	}
	public int getId_Game() {
		return id_Game;
	}
	public void setId_Game(int id_Game) {
		this.id_Game = id_Game;
	}
	public String getGame_Title() {
		return game_Title;
	}
	public void setGame_Title(String game_Title) {
		this.game_Title = game_Title;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}

}
		
	
	