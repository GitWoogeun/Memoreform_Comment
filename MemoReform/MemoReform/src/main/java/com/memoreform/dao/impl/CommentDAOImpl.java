package com.memoreform.dao.impl;

import com.memoreform.vo.CommentVO;
import java.util.List;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("commentDAO")
public class CommentDAOImpl {

  @Autowired
  private SqlSessionTemplate mybatis;

  //댓글 DB에 저장하기
  //mybatis = DB연결 , mybatis에 있는 insert문 호출해서 DAO에 적용
  public int insertComment(CommentVO vo) {
    System.out.println("====> mybatis insertComment()호출");
    return mybatis.insert("commentDAO.insertComment", vo);
  }

  //댓글 DB에서 불러오기
  //mybatis = DB연결 , mybatis에 있는 select * from문 호출해서 DAO에 적용
  public List<CommentVO> selectAllComment() {
    System.out.println("===>> mybatis selectAllComment()호출");
    return mybatis.selectList("commentDAO.selectAllComment");
  }

  //댓글 DB에서 삭제하기
  //mybatis = DB연결 , mybatis에 있는 delete from qna_reply 호출해서 DAO에 적용
  public int deleteComment(CommentVO vo) {
    System.out.println("===> mybatis deleteComment()호출");
    return mybatis.delete("commentDAO.deleteComment", vo);
  }

  //댓글 DB에서 수정하기
  //mybatis = DB연결 , mybatis에 있는 updateComment 호출해서 DAO에 적용
  public int updateComment(CommentVO commentVO) {
    System.out.println("=>>>>>>>>>>>>mybatis.updateComment() 호출");
    return mybatis.update("commentDAO.updateComment", commentVO);
  }
}
