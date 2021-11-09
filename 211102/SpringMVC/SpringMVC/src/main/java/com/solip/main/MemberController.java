package com.solip.main;

import com.solip.service.MemberService;
import com.solip.vo.MemberVO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
public class MemberController {

    private MemberService memberService;

    @PostMapping("select")
    public String select(MemberVO mvo, Model model){

        List<MemberVO> list = memberService.showInfo(mvo);
        model.addAttribute("Info", list);

        return "/views/result";

    }



}
