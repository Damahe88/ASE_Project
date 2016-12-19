package com.tum.aseproject64;

import com.googlecode.objectify.Key;
import com.googlecode.objectify.annotation.Entity;
import com.googlecode.objectify.annotation.Id;

@Entity
public class Student {
@Id public Long id;

private String firstname;
private String lastname;
private String matrikelnumber;


	public Student(String firstname, String lastname, String matrikelnumber) {
		this.firstname = firstname;
		this.lastname = lastname;
		this.matrikelnumber = matrikelnumber;
	}
}