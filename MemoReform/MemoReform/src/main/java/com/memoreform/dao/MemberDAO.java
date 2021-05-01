package com.memoreform.dao;

import com.memoreform.vo.MemberVO;

public interface MemberDAO {

  int userJoin(MemberVO vo);

  MemberVO userLogin(MemberVO vo);
}
