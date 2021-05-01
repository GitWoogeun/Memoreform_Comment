package com.memoreform.controller;

import com.memoreform.service.CommentService;
import com.memoreform.vo.CommentVO;
import com.memoreform.vo.MemberVO;
import java.util.List;
//import org.springframework.beans.factory.annotation.Autowired;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

//@Controller와 RestController의 차이
/*@Controller는 MVC패턴에서 주로 View를 반환하기 위해 사용합니다. 하지만
 * Spring MVC Controller에서도 Data를 반환해야하는 경우가 있습니다.
 * Spring MVC Controller에서 Data를 반환하기 위해 사용하는게 @RestController를 주로 활용한다.
 * Controller에서도 Json형태로 데이터를 반환할수 있다.*/


@Controller
public class CommentController {

  @Autowired
  private CommentService commentService;

  //댓글을 DB에 저장!
  @RequestMapping("comment/insertComment")
  @ResponseBody
  public void insertComment(CommentVO vo, HttpSession session) {
    MemberVO result = (MemberVO) session.getAttribute("result");
    System.out.println("=>>>>>>>>controller()");
    vo.setWriterId(result.getNo());
    System.out.println(vo.toString());  //데이터가 잘 들어가는지 확인
    commentService.insertComment(vo);
  }

  //DB에 저장된 댓글들 불러오기
  @RequestMapping("comment/selectAllComment")
  @ResponseBody
  public List<CommentVO> CommentList() {
    System.out.println("=>>>>>>>>>>>>>>>>>selectAllComment()호출");
    List<CommentVO> cList = commentService.selectAllComment();
    //System.out.println(cList.size());
    //System.out.println(cList);
    return cList;
  }

  //DB에 저장된 댓글 삭제
  @RequestMapping("comment/deleteComment")
  @ResponseBody
  public void deleteComment(CommentVO vo) {
    System.out.println("=>>>>>>>>>>>>>>>>>>deleteComment() Controller 호출");
    commentService.deleteComment(vo);
  }

  //DB에 저장된 댓글 수정하기
  @RequestMapping(value = "comment/updateComment", method = RequestMethod.POST)
  @ResponseBody
  public void updateComment(CommentVO commentVO, int no, String cn) {
    System.out.println("=>>>>>>>>>>>>>updateComment() updateComment 호출");
    System.out.println(no);
    System.out.println(cn);
    System.out.println(commentVO.toString());
    commentService.updateComment(commentVO);
//    System.out.println(commentService.updateComment(commentVO));
//  commentService.updateComment(no);
  }

//  //댓글 수정 페이지로 이동
//  @RequestMapping("qna/qnaGetComment")
//  public void update(){
//
//  }
}
