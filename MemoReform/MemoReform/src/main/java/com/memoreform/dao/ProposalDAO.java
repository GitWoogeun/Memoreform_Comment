package com.memoreform.dao;

import com.memoreform.vo.ProposalVO;
import java.util.List;

public interface ProposalDAO {

  List<ProposalVO> getProposalList(ProposalVO vo);

  ProposalVO getProposal(ProposalVO vo);
}
