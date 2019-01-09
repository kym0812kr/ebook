package model;

public class Book {
	private int book_no;
	private String book_name;
	private String book_price;
	private String book_own;
	private String book_owner;
	
	public int getBook_no() {
		return book_no;
	}
	public void setBook_no(int book_no) {
		this.book_no = book_no;
	}
	public String getBook_name() {
		return book_name;
	}
	public void setBook_name(String book_name) {
		this.book_name = book_name;
	}
	public String getBook_price() {
		return book_price;
	}
	public void setBook_price(String book_price) {
		this.book_price = book_price;
	}
	public String getBook_own() {
		return book_own;
	}
	public void setBook_own(String book_own) {
		this.book_own = book_own;
	}
	public String getBook_owner() {
		return book_owner;
	}
	public void setBook_owner(String book_owner) {
		this.book_owner = book_owner;
	}
	@Override
	public String toString() {
		return "Book [book_no=" + book_no + ", book_name=" + book_name + ", book_price=" + book_price + ", book_own="
				+ book_own + ", book_owner=" + book_owner + "]";
	}
	public Book(int book_no, String book_name, String book_price, String book_own, String book_owner) {
		this.book_no = book_no;
		this.book_name = book_name;
		this.book_price = book_price;
		this.book_own = book_own;
		this.book_owner = book_owner;
	}
	public Book() {
		
	}
	
	
	
}
