package Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MavenController {

    @RequestMapping("/")
    public String test(){
        return "index";
    }

}
