package com.memoreform.service;

import com.memoreform.vo.MemberVO;

public interface MemberService {

  MemberVO userLogin(MemberVO vo);

  int userJoin(MemberVO vo);

}
