package snac;

public class SnacDTO {
	private String co;
	private String snak;
	private int price;
	private int amo;
	@Override
	public String toString() {
		return "SnacDTO [co=" + co + ", snak=" + snak + ", price=" + price + ", amo=" + amo + "]";
	}
	public SnacDTO() {
	}
	public SnacDTO(String co, String snak, int price, int amo) {
		this.co = co;
		this.snak = snak;
		this.price = price;
		this.amo = amo;
	}
	public String getCo() {
		return co;
	}
	public void setCo(String co) {
		this.co = co;
	}
	public String getSnak() {
		return snak;
	}
	public void setSnak(String snak) {
		this.snak = snak;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getAmo() {
		return amo;
	}
	public void setAmo(int amo) {
		this.amo = amo;
	}
	
	
}
