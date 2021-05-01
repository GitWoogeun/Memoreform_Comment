package com.memoreform.vo;

import lombok.Data;

@Data
public class QnAVO {

  private int no, writerNo;
  private String sj, cn, co, rgsde, nm;
public int getNo() {
	return no;
}
public void setNo(int no) {
	this.no = no;
}
public int getWriterNo() {
	return writerNo;
}
public void setWriterNo(int writerNo) {
	this.writerNo = writerNo;
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
public String getCo() {
	return co;
}
public void setCo(String co) {
	this.co = co;
}
public String getRgsde() {
	return rgsde;
}
public void setRgsde(String rgsde) {
	this.rgsde = rgsde;
}
public String getNm() {
	return nm;
}
public void setNm(String nm) {
	this.nm = nm;
}
  
  
}
