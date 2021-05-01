package com.memoreform.dao.impl;

import com.memoreform.dao.MemberDAO;
import com.memoreform.vo.MemberVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAOImpl implements MemberDAO {

  final
  SqlSessionTemplate sqlSession;

  public MemberDAOImpl(SqlSessionTemplate sqlSession) {
    this.sqlSession = sqlSession;
  }

  @Override
  public MemberVO userLogin(MemberVO vo) {
    return sqlSession.selectOne("member.userLogin", vo);
  }

  @Override
  public int userJoin(MemberVO vo) {
    return sqlSession.insert("member.userJoin", vo);
  }
}
