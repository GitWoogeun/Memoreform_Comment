package com.memoreform.vo;

import java.io.File;
import java.io.IOException;
import lombok.Data;
import org.springframework.web.multipart.MultipartFile;

@Data
public class RequestVO {

  private int no, mberNo;
  private String ctgry, sj, cn, photo, sttus, rgsde, photoNm;
  private long photoSize;

  MultipartFile file;
 
  
  public int getNo() {
	return no;
}

public void setNo(int no) {
	this.no = no;
}

public int getMberNo() {
	return mberNo;
}

public void setMberNo(int mberNo) {
	this.mberNo = mberNo;
}

public String getCtgry() {
	return ctgry;
}

public void setCtgry(String ctgry) {
	this.ctgry = ctgry;
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

public String getPhoto() {
	return photo;
}

public void setPhoto(String photo) {
	this.photo = photo;
}

public String getSttus() {
	return sttus;
}

public void setSttus(String sttus) {
	this.sttus = sttus;
}

public String getRgsde() {
	return rgsde;
}

public void setRgsde(String rgsde) {
	this.rgsde = rgsde;
}

public String getPhotoNm() {
	return photoNm;
}

public void setPhotoNm(String photoNm) {
	this.photoNm = photoNm;
}

public long getPhotoSize() {
	return photoSize;
}

public void setPhotoSize(long photoSize) {
	this.photoSize = photoSize;
}

public MultipartFile getFile() {
	return file;
}

public void setFile(MultipartFile file) {
    this.file = file;
    if (!file.isEmpty()) {
      photoNm = file.getOriginalFilename();
      photoSize = file.getSize();
      File f = new File(
          "C:\\Users\\Siat\\IdeaProjects\\MemoReform\\src\\main\\webapp\\resources\\upload\\"
              + photoNm);
      try {
        file.transferTo(f);
      } catch (IOException e) {
        e.printStackTrace();
      }
    }
  }
}