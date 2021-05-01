package com.memoreform.controller;

import com.memoreform.service.RequestService;
import com.memoreform.vo.MemberVO;
import com.memoreform.vo.RequestVO;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@RequestMapping("/request")
@Controller
public class RequestController {

  final
  RequestService requestService;

  public RequestController(RequestService requestService) {
    this.requestService = requestService;
  }

  @RequestMapping("/requestForm")
  public void requestForm() {

  }

  @RequestMapping(value = "/insertRequest", method = RequestMethod.POST)
  public void insertRequest(RequestVO vo, HttpSession session) {
    MemberVO result = (MemberVO) session.getAttribute("result");
    System.out.println(vo.toString());
    requestService.insertRequest(vo);
  }
}
