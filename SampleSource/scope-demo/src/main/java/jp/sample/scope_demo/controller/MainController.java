package jp.sample.scope_demo.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import jp.sample.scope_demo.logic.CounterComponent;

@Controller
@Scope("singleton")
public class MainController {
	
	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	
	@Autowired
	CounterComponent counter;
	
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String main(Model model) {
		logger.debug("main() is START ...");
		
		int cnt = counter.getCounter();
		model.addAttribute("counter", cnt);
		return "main";
	}
}
