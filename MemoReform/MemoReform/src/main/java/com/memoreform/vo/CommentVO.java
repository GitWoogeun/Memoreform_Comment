package com.memoreform.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

//@Data = Lombok의 끝판왕 getter, setter, constructor, toString등등 거의 모든 Annotation이 들어있다.
//@NoArgsConstructor = 파라미터가(매개변수) 없는 생성자를 생성합니다.
//@AllArgsConstructor = 클래스에 존재하는 모든 필드에 대한 생성자를 자동으로 생성해줍니다.
//@ToString = 자동으로 변수의 toString을 적용

@Data
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class CommentVO {
  private int no;         //고유번호
  private int qnaNo;      //댓글번호
  private int writerId;   //작성자
  private String cn;      //내용
}
