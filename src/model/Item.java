package model;

public class Item {
	private Games game;
	private int quantity;
	public Item() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Item(Games game, int quantity) {
		super();
		this.game = game;
		this.quantity = quantity;
	}
	public Games getGame() {
		return game;
	}
	public void setGame(Games game) {
		this.game = game;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
}