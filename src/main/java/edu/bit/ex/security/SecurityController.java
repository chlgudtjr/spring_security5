package edu.bit.ex.security;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/security/*")
public class SecurityController {
	
	@GetMapping("/all")
	public void doAll() {
		log.info("do all can access everybody");
	}
	
	@GetMapping("/member")
	private void doMember() {
		log.info("logined member");
	}
	
	@GetMapping("/admin")
	public void doAdmin() {
		log.info("admin only");
	}
	
	@GetMapping("/accessError")
	public void accessError(Authentication auth, Model model) {
		//public void accessError(Principal principal, Model model) : Principal 객체도 컨트롤러에서 사용가능
		log.info("access denied" + auth);
		model.addAttribute("msg", "Access Denied");
	}
}
