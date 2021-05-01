package com.memoreform.vo;

import lombok.Data;

public class ProposalVO {

  private int no, rqstdocNo, expertNo, estmt, mberNo;
  private String sj, cn, rgsde, expertNm;
  private char sttus;
  
public int getNo() {
	return no;
}
public void setNo(int no) {
	this.no = no;
}
public int getRqstdocNo() {
	return rqstdocNo;
}
public void setRqstdocNo(int rqstdocNo) {
	this.rqstdocNo = rqstdocNo;
}
public int getExpertNo() {
	return expertNo;
}
public void setExpertNo(int expertNo) {
	this.expertNo = expertNo;
}
public int getEstmt() {
	return estmt;
}
public void setEstmt(int estmt) {
	this.estmt = estmt;
}
public int getMberNo() {
	return mberNo;
}
public void setMberNo(int mberNo) {
	this.mberNo = mberNo;
}
public String getSj() {
	return sj;
}
public void setSj(String sj) {
	this.sj = sj;
}
public String getCn() {
	return cn;
}
public void setCn(String cn) {
	this.cn = cn;
}
public String getRgsde() {
	return rgsde;
}
public void setRgsde(String rgsde) {
	this.rgsde = rgsde;
}
public String getExpertNm() {
	return expertNm;
}
public void setExpertNm(String expertNm) {
	this.expertNm = expertNm;
}
public char getSttus() {
	return sttus;
}
public void setSttus(char sttus) {
	this.sttus = sttus;
}
  
  
}
