package com.memoreform.vo;

import lombok.Data;

public class MemberVO {

  private int no;
  private String nm, email, password, ty, rgsde, expertCtgry;
public int getNo() {
	return no;
}
public void setNo(int no) {
	this.no = no;
}
public String getNm() {
	return nm;
}
public void setNm(String nm) {
	this.nm = nm;
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
public String getTy() {
	return ty;
}
public void setTy(String ty) {
	this.ty = ty;
}
public String getRgsde() {
	return rgsde;
}
public void setRgsde(String rgsde) {
	this.rgsde = rgsde;
}
public String getExpertCtgry() {
	return expertCtgry;
}
public void setExpertCtgry(String expertCtgry) {
	this.expertCtgry = expertCtgry;
}
  
}
