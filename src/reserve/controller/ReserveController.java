package reserve.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/reserve")
public class ReserveController {
	
	// 화면띄우기
	@RequestMapping(value="/{url}.do")
	public String url(@PathVariable String url) {
		return "/reserve/" + url;
	}
}
