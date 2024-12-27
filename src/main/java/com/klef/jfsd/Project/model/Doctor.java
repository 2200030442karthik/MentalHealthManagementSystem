package com.klef.jfsd.Project.model;

import jakarta.persistence.Column;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "doctor_table")

public class Doctor {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "doctor_id")
	private int id;
	@Column(name = "doctor_name", nullable = false,length = 100)
	private String name;
	@Column(name = "doctor_gender",nullable = false,length = 10)
	private String gender;
	@Column(name = "doctor_dateofbirth",nullable = false,length = 20)
	private String dateofbirth;
	@Column(name = "doctor_email",nullable = false, unique = true, length = 100)
	private String email;
	@Column(name = "doctor_password",nullable = false,length = 100)
	private String password;
	@Column(name = "doctor_location",nullable = false,length = 100)
	private String location;
	@Column(name = "doctor_contact",nullable = false,unique = true,length = 20)
	private String contact;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getDateofbirth() {
		return dateofbirth;
	}
	public void setDateofbirth(String dateofbirth) {
		this.dateofbirth = dateofbirth;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	
}
