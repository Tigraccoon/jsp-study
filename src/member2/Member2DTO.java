package member2;

public class Member2DTO {
	private String userid;
	private String pwd;
	private String name;
	private String email;
	private String hp;
	private String zipcode;
	private String address1;
	private String address2;
	private String join_date;
	private String login_date;
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
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	public String getAddress1() {
		return address1;
	}
	public void setAddress1(String address1) {
		this.address1 = address1;
	}
	public String getAddress2() {
		return address2;
	}
	public void setAddress2(String address2) {
		this.address2 = address2;
	}
	public String getJoin_date() {
		return join_date;
	}
	public void setJoin_date(String join_date) {
		this.join_date = join_date;
	}
	public String getLogin_date() {
		return login_date;
	}
	public void setLogin_date(String login_date) {
		this.login_date = login_date;
	}
	@Override
	public String toString() {
		return "Member2DTO [userid=" + userid + ", pwd=" + pwd + ", name=" + name + ", email=" + email + ", hp=" + hp
				+ ", zipcode=" + zipcode + ", address1=" + address1 + ", address2=" + address2 + ", join_date="
				+ join_date + ", login_date=" + login_date + "]";
	}
	public Member2DTO() {
	}
	public Member2DTO(String userid, String pwd, String name, String email, String hp, String zipcode, String address1,
			String address2, String join_date, String login_date) {
		this.userid = userid;
		this.pwd = pwd;
		this.name = name;
		this.email = email;
		this.hp = hp;
		this.zipcode = zipcode;
		this.address1 = address1;
		this.address2 = address2;
		this.join_date = join_date;
		this.login_date = login_date;
	}
	
	
}
