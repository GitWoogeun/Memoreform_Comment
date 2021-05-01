package com.memoreform.service.impl;

import com.memoreform.dao.MemberDAO;
import com.memoreform.service.MemberService;
import com.memoreform.vo.MemberVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService {

  @Autowired
  private MemberDAO dao;

  @Override
  public MemberVO userLogin(MemberVO vo) {
    return dao.userLogin(vo);
  }

  @Override
  public int userJoin(MemberVO vo) {
    return dao.userJoin(vo);
  }
}
