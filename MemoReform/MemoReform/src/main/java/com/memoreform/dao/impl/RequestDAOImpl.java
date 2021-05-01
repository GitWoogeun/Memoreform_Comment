package com.memoreform.dao.impl;

import com.memoreform.dao.RequestDAO;
import com.memoreform.vo.RequestVO;
import java.util.List;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class RequestDAOImpl implements RequestDAO {

  final
  SqlSessionTemplate sqlSession;

  public RequestDAOImpl(SqlSessionTemplate sqlSession) {
    this.sqlSession = sqlSession;
  }

  public List<RequestVO> getRequestList(RequestVO vo) {
    return sqlSession.selectList("request.getRequestList", vo);
  }

  public RequestVO getRequest(RequestVO vo) {
    return sqlSession.selectOne("request.getRequest", vo);
  }

  @Override
  public void insertRequest(RequestVO vo) {
    sqlSession.insert("request.insertRequest", vo);
  }
}
