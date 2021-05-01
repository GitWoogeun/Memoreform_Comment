package com.memoreform.dao;

import com.memoreform.vo.NoticeVO;
import java.util.List;

public interface NoticeDAO {

  List<NoticeVO> getNoticeList(NoticeVO vo);

  NoticeVO getNotice(NoticeVO vo);

  int insertNotice(NoticeVO vo);

  int updateNotice(NoticeVO vo);

  int updateCount(NoticeVO vo);

  int deleteNotice(NoticeVO vo);
}
