package com.memoreform.service;

import com.memoreform.vo.QnAVO;
import java.util.List;

public interface QnAService {

  List<QnAVO> getQnAList(QnAVO vo);

  QnAVO getQnA(QnAVO vo);

  void insertQnA(QnAVO vo);

  void updateQnA(QnAVO vo);

  int updateCount(QnAVO vo);

  void deleteQnA(QnAVO vo);


}
