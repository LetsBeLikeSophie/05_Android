import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;


@Controller
public class MavenController {

    public String selectOne (Model model){
        String msg="안녕";
        model.addAttribute("msg", msg);
        return "result";
    }
}
