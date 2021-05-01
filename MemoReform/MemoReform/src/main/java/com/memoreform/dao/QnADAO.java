package com.memoreform.dao;

import com.memoreform.vo.QnAVO;
import java.util.List;

public interface QnADAO {

  List<QnAVO> getQnAList(QnAVO vo);

  QnAVO getQnA(QnAVO vo);

  int insertQnA(QnAVO vo);

  int updateQnA(QnAVO vo);

  int updateCount(QnAVO vo);

  int deleteQnA(QnAVO vo);
}
