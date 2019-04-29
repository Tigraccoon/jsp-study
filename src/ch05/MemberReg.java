package ch05;

import java.sql.Timestamp;

public class MemberReg {
	private String id;
	private String pwd;
	private String name;
	private String email;
	private String hp;
	private Timestamp tp;
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
	public String getHp() {
		return hp;
	}
	public void setHp(String hp) {
		this.hp = hp;
	}
	public Timestamp getTp() {
		return tp;
	}
	public void setTp(Timestamp tp) {
		this.tp = tp;
	}
	@Override
	public String toString() {
		return "MemberReg [id=" + id + ", pwd=" + pwd + ", name=" + name + ", email=" + email + ", hp=" + hp + ", tp="
				+ tp + "]";
	}
	
	
}
