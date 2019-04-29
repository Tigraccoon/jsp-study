package ch05;

import java.sql.Timestamp;

public class RegisterBean {
	private String id;
	private String passwd;
	private String name;
	private Timestamp reg_data;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Timestamp getReg_data() {
		return reg_data;
	}
	public void setReg_data(Timestamp reg_data) {
		this.reg_data = reg_data;
	}
	@Override
	public String toString() {
		return "RegisterBean [id=" + id + ", passwd=" + passwd + ", name=" + name + ", reg_data=" + reg_data + "]";
	}
	
}
