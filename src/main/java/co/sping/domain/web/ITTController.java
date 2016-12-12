package co.sping.domain.web;
import co.sping.domain.ITT;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/itts")
@Controller
@RooWebScaffold(path = "itts", formBackingObject = ITT.class)
public class ITTController {
}
