package co.sping.domain.web;
import co.sping.domain.Newnew;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/newnews")
@Controller
@RooWebScaffold(path = "newnews", formBackingObject = Newnew.class)
public class NewnewController {
}
