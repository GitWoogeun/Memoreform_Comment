package com.memoreform.service.impl;

import com.memoreform.dao.impl.RequestDAOImpl;
import com.memoreform.service.RequestService;
import com.memoreform.vo.RequestVO;
import java.util.List;
import org.springframework.stereotype.Service;

@Service
public class RequestServiceImpl implements RequestService {

  private final RequestDAOImpl dao;

  public RequestServiceImpl(RequestDAOImpl dao) {
    this.dao = dao;
  }

  @Override
  public List<RequestVO> getRequestList(RequestVO vo) {
    return dao.getRequestList(vo);
  }

  @Override
  public RequestVO getRequest(RequestVO vo) {
    return dao.getRequest(vo);
  }

  @Override
  public void insertRequest(RequestVO vo) {
    dao.insertRequest(vo);
  }

}
