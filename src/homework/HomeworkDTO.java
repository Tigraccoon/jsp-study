package homework;

public class HomeworkDTO {
	private String id;
	private String name;
	private String email;
	private String hp;
	private String in_date;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getHp() {
		return hp;
	}
	public void setHp(String hp) {
		this.hp = hp;
	}
	public String getIn_date() {
		return in_date;
	}
	public void setIn_date(String in_date) {
		this.in_date = in_date;
	}
	@Override
	public String toString() {
		return "HomeworkDTO [id=" + id + ", name=" + name + ", email=" + email + ", hp=" + hp + ", in_date=" + in_date
				+ "]";
	}
	public HomeworkDTO(String id, String name, String email, String hp, String in_date) {
		this.id = id;
		this.name = name;
		this.email = email;
		this.hp = hp;
		this.in_date = in_date;
	}
	public HomeworkDTO(String id, String name, String email, String hp) {
		this.id = id;
		this.name = name;
		this.email = email;
		this.hp = hp;
	}
	public HomeworkDTO() {
	}
	
	
}
