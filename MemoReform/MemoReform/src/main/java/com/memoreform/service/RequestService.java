package com.memoreform.service;

import com.memoreform.vo.RequestVO;
import java.util.List;

public interface RequestService {

  List<RequestVO> getRequestList(RequestVO vo);

  RequestVO getRequest(RequestVO vo);

  void insertRequest(RequestVO vo);
}
