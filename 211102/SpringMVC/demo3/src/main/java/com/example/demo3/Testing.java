package com.example.demo3;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Testing {

    @RequestMapping(value="testing")
    String testingGettingResult (Model model){

        String msg = "안녕하세요";
        model.addAttribute("msg", msg);

        return "result";

    }
}
