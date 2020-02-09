package com.ttjsyxt.entity;

public class Master {

	private int id;
	private String a_name;
	private String password;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getA_name() {
		return a_name;
	}
	public void setA_name(String a_name) {
		this.a_name = a_name;
	}
	public Master(String a_name, String password) {
		super();
		this.a_name = a_name;
		this.password = password;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Master(int id, String a_name, String password) {
		super();
		this.id = id;
		this.a_name = a_name;
		this.password = password;
	}
	
}
