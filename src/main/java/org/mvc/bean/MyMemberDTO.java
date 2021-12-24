package org.mvc.bean;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class MyMemberDTO {
	private String id;
	private String passwd;
	private String name;
	private String jumin1;
	private String jumin2;
	private String email;
	private String blog;
	private Timestamp reg_date;
}