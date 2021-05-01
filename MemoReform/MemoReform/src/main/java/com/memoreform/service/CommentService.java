package com.memoreform.service;

import com.memoreform.vo.CommentVO;
import java.util.List;

public interface CommentService {
    //댓글 DB에 저장
    int insertComment(CommentVO vo);

    //댓글 전체 가져오기
    List<CommentVO>selectAllComment();

    //댓글 삭제
    int deleteComment(CommentVO vo);

    //댓글 수정하기
    int updateComment(CommentVO commentVO);
}
