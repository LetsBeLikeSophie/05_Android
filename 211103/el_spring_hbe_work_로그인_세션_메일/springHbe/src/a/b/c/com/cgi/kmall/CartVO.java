package a.b.c.com.cgi.kmall;

public class CartVO {

	private String name; // 과일명
	private int price;   // 가격
	private int cnt;     // 수량
	
	public CartVO() {
		
	}
	
	public CartVO(String name, int price, int cnt) {
	
		this.name = name;
		this.price = price;
		this.cnt = cnt;
	}
	public String getName() {
		return name;
	}
	public int getPrice() {
		return price;
	}
	public int getCnt() {
		return cnt;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
}
