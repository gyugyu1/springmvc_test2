package com.junefw.infra.modules.shopping;

public class User {
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getBrithdate() {
		return brithdate;
	}
	public void setBrithdate(String brithdate) {
		this.brithdate = brithdate;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmailFull() {
		return emailFull;
	}
	public void setEmailFull(String emailFull) {
		this.emailFull = emailFull;
	}
	private String name;
	private String brithdate;
	private String phoneNumber;
	private String userId;
	private String password;
	private String emailFull;
	private String registerdAt;

}