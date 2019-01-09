package controller;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import service.TotalService;

@Controller
public class TotalController {
	
	@Autowired
	private TotalService tservice;
	
	@RequestMapping("Main.do")
	public ModelAndView boardList( 
			@RequestParam(defaultValue="1") int page,
			@RequestParam(required = false)String keyword,
			@RequestParam(defaultValue="0") int type
			) throws UnsupportedEncodingException {
		ModelAndView mav = new ModelAndView();
		if(type == 0) {			
			mav.addAllObjects(tservice.getBoardListPage(page));
  		}
		if(type==1 || type==2||type == 3) {
			mav.addAllObjects(tservice.getBoardListByCondition(page, type, keyword));
			mav.addObject("keyword", URLEncoder.encode(keyword, "UTF-8"));
			mav.addObject("type", type);
		}
		mav.setViewName("Main"); 
		return mav;  
	}
	
	@RequestMapping("LoginForm.do")
	public String loginForm() {
		return "LoginForm";	
	}
	
	@RequestMapping("login.do")
	public String login(HttpSession session, String user_id, String user_pwd ) {
		int result = tservice.login(user_id, user_pwd);
		String redirect = null;
		if(result==0) {
			redirect = "redirect:Main.do";
			session.setAttribute("loginUser", user_id); 
		}
		else {
			redirect = "redirect:LoginForm.do";
		}		
		return redirect;
	}
	
	@RequestMapping("logout.do")
	public String logout(HttpSession session) {
		session.removeAttribute("loginUser");
		return "redirect:Main.do";
	}
	
	@RequestMapping("ownlist.do")
	public ModelAndView ownlist(String loginUser){
		ModelAndView mav = new ModelAndView();
		mav.addObject("ownlist",tservice.ownlist(loginUser));
		mav.setViewName("Main"); 
		return mav;  
	}
	
}
