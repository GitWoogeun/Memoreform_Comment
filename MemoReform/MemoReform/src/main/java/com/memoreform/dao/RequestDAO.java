package com.memoreform.dao;

import com.memoreform.vo.RequestVO;
import java.util.List;

public interface RequestDAO {

  List<RequestVO> getRequestList(RequestVO vo);

  RequestVO getRequest(RequestVO vo);

  void insertRequest(RequestVO vo);

}
