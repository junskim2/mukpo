package store.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/store")
public class StoreController {

	// 화면 띄우기
		@RequestMapping(value="/{url}.do")
		public String url(@PathVariable String url) {
			return "/store/" + url;
		}
}
