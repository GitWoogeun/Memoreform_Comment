package com.memoreform.service.impl;

import com.memoreform.dao.impl.CommentDAOImpl;
import com.memoreform.service.CommentService;
import com.memoreform.vo.CommentVO;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("commentService")
public class CommentServiceImpl implements CommentService {

  @Autowired
  private CommentDAOImpl commentDAO;

  //DAO에서 넘겨받은 insertComment()를 Controller로 연결
  @Override
  public int insertComment(CommentVO vo) {
    System.out.println("=>>>>>>>>>>>>>>>>>>>>>Service()");
    return commentDAO.insertComment(vo);
  }

  //DB에 저장된 댓글들을 전체 불러오기(List)로 불러오기
  @Override
  public List<CommentVO> selectAllComment() {
    System.out.println("=>>>>>>selectAllCommentService()호출");
    return commentDAO.selectAllComment();
  }

  @Override
  public int deleteComment(CommentVO vo) {
    System.out.println("=>>>>>>>deleteComment() Service호출");
    return commentDAO.deleteComment(vo);
  }

  @Override
  public int updateComment(CommentVO commentVO){
    System.out.println("=>>>>>>>>updateComment() Service호출");
    return commentDAO.updateComment(commentVO);
  }
}
