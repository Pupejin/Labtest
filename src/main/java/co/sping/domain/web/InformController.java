package co.sping.domain.web;
import co.sping.domain.Inform;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/informs")
@Controller
@RooWebScaffold(path = "informs", formBackingObject = Inform.class)
public class InformController {
}
