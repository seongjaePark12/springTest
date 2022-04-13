package com.spring.springTest.vo;

import lombok.Data;

//@Getter
//@Setter
//@ToString
//public class LombokVO {
public @Data class LombokVO {
	private String mid;
	private String pwd;
	private int age;

	private String op;
	private int su1;
	private int su2;
}
