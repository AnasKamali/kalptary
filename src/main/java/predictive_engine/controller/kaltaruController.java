package predictive_engine.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import predictive_engine.configure.dao.KalptaruDao;

@Controller
public class kaltaruController {
	@RequestMapping("/kalptaru")
	public String kalp() {
		new KalptaruDao().getcolumn();
		return "ajdfa";
	}
}
