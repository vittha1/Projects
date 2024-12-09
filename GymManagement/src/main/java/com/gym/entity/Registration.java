package com.gym.entity;

public class Registration 
{
	private int id;
	private String fname;
	private String lname;
	private String mob;
	private String mail;
	private String add;
	private String gender;
	private String username;
	private String pass;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getMob() {
		return mob;
	}
	public void setMob(String mob) {
		this.mob = mob;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public String getAdd() {
		return add;
	}
	public void setAdd(String add) {
		this.add = add;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	@Override
	public String toString() {
		return "Registration [id=" + id + ", fname=" + fname + ", lname=" + lname + ", mob=" + mob + ", mail=" + mail
				+ ", add=" + add + ", gender=" + gender + ", Username=" + username + ", pass=" + pass + "]";
	}
	
	
	
	

}
