package member4;

public class Member4DTO {
	private String id;
	private String pwd;
	private String name;
	private String email;
	private String tel;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
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
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	@Override
	public String toString() {
		return "Member4DTO [id=" + id + ", pwd=" + pwd + ", name=" + name + ", email=" + email + ", tel=" + tel + "]";
	}
	public Member4DTO(String id, String pwd, String name, String email, String tel) {
		this.id = id;
		this.pwd = pwd;
		this.name = name;
		this.email = email;
		this.tel = tel;
	}
	public Member4DTO() {
	}
	
}
