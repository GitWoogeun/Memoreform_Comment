package com.memoreform.controller;

import com.memoreform.vo.MemberVO;
import com.memoreform.service.MemberService;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@RequestMapping("/member")
@Controller
public class MemberController {

  private final MemberService memberService;

  public MemberController(MemberService memberService) {
    this.memberService = memberService;
  }

  @RequestMapping("/joinForm")
  public void joinForm() {
  }

  @RequestMapping("/loginForm")
  public void loginForm() {
  }

  @RequestMapping("/joinMember")
  public String joinMember(Model model, MemberVO vo) {
    System.out.println(model);
    model.addAttribute(memberService.userJoin(vo));
    return "redirect:/";
  }

  @RequestMapping(value = "/loginMember", method = RequestMethod.POST)
  public String loginMember(MemberVO vo, HttpSession session) {
    MemberVO result = memberService.userLogin(vo);

    // 로그인 성공
    if (result != null) {
      // 성공하면 세션에 정보 저장
      session.setAttribute("result", result);

      // 유형에 따라서 분기시킴
      if (result.getTy().equals("U")) {
        return "redirect:/user/userProposal";
      } else if (result.getTy().equals("E")) {
        return "redirect:/expert/expertPage";
      } else {
        return "redirect:/admin/adminMain";
      }
    } else {
      return "redirect:/member/loginMember";
    }
  }

  @RequestMapping("/logoutMember")
  public String logoutMember(HttpSession session) {
    session.invalidate();
    return "redirect:/";
  }

  @RequestMapping("/search")
  public void search() {

  }
}
