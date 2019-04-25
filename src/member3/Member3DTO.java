package member3;

public class Member3DTO {
	private String userid;
	private String pwd;
	private String name;
	private String email;
	private String hp;
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
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
	public String getHp() {
		return hp;
	}
	public void setHp(String hp) {
		this.hp = hp;
	}
	@Override
	public String toString() {
		return "Member3DTO [userid=" + userid + ", pwd=" + pwd + ", name=" + name + ", email=" + email + ", hp=" + hp
				+ "]";
	}
	public Member3DTO(String userid, String pwd, String name, String email, String hp) {
		this.userid = userid;
		this.pwd = pwd;
		this.name = name;
		this.email = email;
		this.hp = hp;
	}
	public Member3DTO() {
	}
	
	
	
}
