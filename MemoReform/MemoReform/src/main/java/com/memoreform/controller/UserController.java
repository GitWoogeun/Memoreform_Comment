package com.memoreform.controller;

import com.memoreform.service.ProposalService;
import com.memoreform.service.RequestService;
import com.memoreform.vo.MemberVO;
import com.memoreform.vo.ProposalVO;
import com.memoreform.vo.RequestVO;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/user")
@Controller
public class UserController {

  final
  RequestService requestService;

  final
  ProposalService proposalService;

  public UserController(RequestService requestService, ProposalService proposalService) {
    this.requestService = requestService;
    this.proposalService = proposalService;
  }

  //  받은 견적이 나와야 됨
  @RequestMapping("/userRequest")
  public void userRequest(Model model, RequestVO vo, HttpSession session) {
    MemberVO result = (MemberVO) session.getAttribute("result");
    vo.setMberNo(result.getNo());
    model.addAttribute("requestList", requestService.getRequestList(vo));
  }

  @RequestMapping("/userProposal")
  public void userProposal(Model model, ProposalVO vo, HttpSession session) {
    MemberVO result = (MemberVO) session.getAttribute("result");
    vo.setMberNo(result.getNo());
    model.addAttribute("proposalList", proposalService.getProposalList(vo));
  }

  @RequestMapping("/requestForm")
  public void requestForm() {

  }

  @RequestMapping("/requestCheck")
  public void requestCheck() {

  }

  @RequestMapping("/requestList")
  public void requestList() {

  }
}
