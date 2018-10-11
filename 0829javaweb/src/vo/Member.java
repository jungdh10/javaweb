package vo;

import java.util.Date;

public class Member {	
	protected String id;
	protected String password;
	protected String name;
	protected String phone;
	protected Date birthday;
	
	//접근자 메소드
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	
	@Override
	public String toString() {
		return "Member [id=" + id + ", password=" + password + ", name=" + name + ", phone=" + phone + ", birthday="
				+ birthday + "]";
	}
	public Member() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Member(String id, String password, String name, String phone, Date birthday) {
		super();
		this.id = id;
		this.password = password;
		this.name = name;
		this.phone = phone;
		this.birthday = birthday;
	}
	
	
	
	
}
