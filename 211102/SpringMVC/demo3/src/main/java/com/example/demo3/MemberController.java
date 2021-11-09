package com.example.demo3;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;

@Controller
public class MemberController {

    @Autowired(required = false)
    private MemberService memberService;
    @PostMapping("select")
    public String select(MemberVO mvo, Model model){

        List<MemberVO> list = memberService.selectInfo(mvo);
        model.addAttribute("Info", list);

        return "/views/result";

    }



}
