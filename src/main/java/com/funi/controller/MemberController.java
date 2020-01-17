package com.funi.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.funi.dao.MemberDAO;
import com.funi.dao.PaymentDAO;
import com.funi.domain.MemberDTO;
import com.funi.domain.PaymentDTO;
import com.funi.service.EmailService;
import com.funi.service.KakaoAPI;
import com.funi.util.MailHandler;
import com.funi.util.SHA256Util;

@Controller
public class MemberController {
	
	@Autowired
	@Qualifier("memberdao")
	MemberDAO memberdao;
	
	@Autowired
	@Qualifier("kakao")
	KakaoAPI kakao;
	
	@Autowired
	@Qualifier("paymentdao")
	PaymentDAO paymentdao;
	
	
	@Autowired
	@Qualifier("emailService")
	EmailService emailService;
	
	// login-register
	@RequestMapping(value = "/login.fu", method = RequestMethod.GET) public
	ModelAndView login(Locale locale, Model model, String message) {
		ModelAndView loginmav = new ModelAndView();
		loginmav.setViewName("member/login");
		if (message != null) { 
			loginmav.addObject("message", message); 
		}
		return loginmav; 
	}

	@RequestMapping(value = "/login_ok.fu", method = RequestMethod.POST) public
	ModelAndView login_ok(HttpServletRequest request, Model model, MemberDTO paramdto) {

		ModelAndView loginmav = new ModelAndView(); 
		MemberDTO memberdto = null; 
		try {
			boolean flag = memberdao.searchID(paramdto.getEmail());
			
			String message = null;
			
			if (!flag) { 
				message = "회원 정보를 찾을수 없습니다."; 
				loginmav.addObject("message", message); 
				loginmav.setViewName("member/login"); 	
				return loginmav; 
			}
			memberdto = memberdao.searchMember(paramdto.getEmail());
			if(memberdto.getEnableEmail() == 0) {
				message = "유효하지 않는 아이디입니다.";
				loginmav.addObject("message", message);
				loginmav.setViewName("member/login"); 
				return loginmav;
			}
			
			String paramPassword = SHA256Util.getEncrypt(paramdto.getPwd(),	memberdto.getSalt()); 		
			if (!memberdto.getPwd().equals(paramPassword)) { 
				message = "계정 패스워드를 확인해주세요."; 			
				loginmav.addObject("message", message);
				loginmav.setViewName("member/login"); 			
				return loginmav; 
			} 
		} 
		catch (Exception e) { 
			System.out.println(e.toString()); 
		} 
		
		HttpSession session = request.getSession(); 
		session.setAttribute("email", memberdto.getEmail());
		session.setAttribute("name", memberdto.getName());
		loginmav.setViewName("redirect:/home.fu"); return loginmav; 
	}

	@RequestMapping(value = "/kakaologin") 
	public String login(@RequestParam("code") String code) { 
		
		String access_Token = kakao.getAccessToken(code); 
		System.out.println("controller access_token : " + access_Token);
		
		return "index"; 
	}

	@RequestMapping(value = "/logout.fu", method = RequestMethod.GET) 
	public ModelAndView logout(HttpServletRequest request, HttpServletResponse response, HttpSession session) throws IOException { 
		
		ModelAndView logoutmav = new ModelAndView(); 
		session.removeAttribute("email");
	
		logoutmav.setViewName("redirect:/login.fu"); return logoutmav; 
	}

	@RequestMapping(value = "/searchPassword.fu", method = { RequestMethod.POST, RequestMethod.GET }) 
	public ModelAndView searchPwd() { 
	
		ModelAndView mav = new ModelAndView(); 
		mav.setViewName("member/searchPwd"); 
		
		return mav; 
	}
	@RequestMapping(value = "/sendpw.fu", method = {RequestMethod.POST }) 
	public ModelAndView sendEmailAction(ModelMap model,	MemberDTO memberdto,RedirectAttributes rttr) throws Exception {
		ModelAndView searchpwdmav = new ModelAndView();
		try {
			emailService.searchPwdMail(memberdto);
			rttr.addFlashAttribute("message","인증메일을 보냈습니다.");
			searchpwdmav.setViewName("redirect:/login.fu");
		} catch (Exception e) {
			System.out.println(e.toString());
			rttr.addFlashAttribute("message","가입시 사용한 이메일로 인증해주세요");
			searchpwdmav.setViewName("member/login");
		}		
		return searchpwdmav;
	}
	
	@RequestMapping(value = "/changPwd.fu", method = { RequestMethod.POST, RequestMethod.GET }) 
	public ModelAndView changePwd(String email) { 
		ModelAndView mav = new ModelAndView(); 
		mav.addObject("email",email);
		mav.setViewName("member/changePwd"); 
		return mav; 
	}
	
	@RequestMapping(value = "/changePwd_ok.fu", method = { RequestMethod.POST })
	public ModelAndView changePwd_ok(String email,String pwd,String pwdcheck) { 
		ModelAndView changePwdmav = new ModelAndView();
		try {
			MemberDTO memberdto = memberdao.searchMember(email);
			String salt = SHA256Util.generateSalt(); 
			memberdto.setSalt(salt);
			memberdto.setPwd(SHA256Util.getEncrypt(pwd,salt)); 
			memberdao.update_pw(memberdto);
			changePwdmav.addObject("message","패스워드가 변경되었습니다.");
		} 
		catch (Exception e)	{ 
			System.out.println(e.toString()); 
		}	
		changePwdmav.setViewName("redirect:/login.fu"); 	
		return changePwdmav; 
	}
	@RequestMapping(value = "/mypage.fu", method = { RequestMethod.GET,	RequestMethod.POST }) 
	public ModelAndView myinfo(ModelMap model, HttpSession session) throws Exception { 
		
			ModelAndView myinfomav = new ModelAndView();
			myinfomav.setViewName("member/mypage"); 
			String email = (String)session.getAttribute("email"); 
			MemberDTO memberdto = memberdao.searchMember(email); 
			List<PaymentDTO> paylist =  paymentdao.getTotalList(email);		
			myinfomav.addObject("paylist",paylist);
			myinfomav.addObject("memberdto", memberdto); 
			myinfomav.setViewName("mypage"); 
			return myinfomav; 
	}


	@RequestMapping(value = "/myinfo_ok.fu", method = {RequestMethod.POST }) 
	public ModelAndView myinfo_ok(ModelMap model, HttpSession session, MemberDTO memberdto) throws Exception {

		ModelAndView myinfomav = new ModelAndView();
		String salt = SHA256Util.generateSalt(); 
		memberdto.setSalt(salt); 
		String password = memberdto.getPwd(); 
		password = SHA256Util.getEncrypt(password, salt);
		memberdto.setPwd(password);
		memberdao.update_myinfo(memberdto);
		myinfomav.setViewName("redirect:/home.fu"); 
		return myinfomav; 
	}

	@RequestMapping(value = "/deleteMember.fu", method = { RequestMethod.GET, RequestMethod.POST }) 
	public ModelAndView deleteMeber_ok(ModelMap model, HttpSession session) throws Exception { 
		
		ModelAndView deletemav = new ModelAndView(); 
		
		deletemav.setViewName("member/deleteMember"); 
		
		return deletemav; 
	}

	@RequestMapping(value = "/deleteMember_ok.fu", method = { RequestMethod.GET,RequestMethod.POST }) 
	public ModelAndView deleteMeber(ModelMap model,HttpSession session) throws Exception { 
		ModelAndView deletemav = new ModelAndView(); 
		String email = (String) session.getAttribute("email");
		memberdao.delete_member(email); session.removeAttribute("email");
		deletemav.setViewName("redirect:/login.fu"); 
		deletemav.addObject("message","회원을 탈퇴하였습니다."); 
		return deletemav;
	}

	// 회원가입
	@RequestMapping(value = "/register.fu", method = RequestMethod.GET)
	public String register(Locale locale, Model model, HttpServletRequest request, HttpServletResponse response) throws IOException {

		if (request.getParameter("emailcheck") != null) {

			response.setContentType("text/html; charset=UTF-8"); 
			PrintWriter writer = response.getWriter();	
			writer.println("<script>alert('Email이 중복되었습니다.'); history.go(-1); </script>"); 
			writer.flush(); 
		} 
		
		return "member/register"; 
	}

	@RequestMapping(value = "/register_ok.fu", method = { RequestMethod.GET, RequestMethod.POST }) 
	public String register_ok(MemberDTO memberdto, HttpServletRequest request, HttpServletResponse response,RedirectAttributes rttr) throws Exception {

		request.setCharacterEncoding("utf-8");

		String phone1 = request.getParameter("phone1"); 
		String phone2 =	request.getParameter("phone2"); 
		String phone = phone1 + phone2; // salt
		
		//SHA256 암호화 저장 
		memberdto.setPhone(phone); 
		String salt = SHA256Util.generateSalt(); 
		memberdto.setSalt(salt); 
		String password = memberdto.getPwd(); 
		password = SHA256Util.getEncrypt(password, salt);
		memberdto.setPwd(password);
		memberdto.setEnableEmail(0);
	
		try {
			memberdao.insertData(memberdto);
		} catch (Exception e) {
			System.out.println(e.toString());
		}
	
		try {
			emailService.regist(memberdto);
		} catch (Exception e) {
			System.out.println(e.toString());
		}	
		rttr.addFlashAttribute("message","메일을 보냈습니다.이메을을 확인하세요");
		return "redirect:/login.fu"; 

	}
	//이메일 인증 코드 검증
    @RequestMapping(value = "/emailConfirm.fu", method = RequestMethod.GET)
    public String emailConfirm(String email,Model model,RedirectAttributes rttr) throws Exception { 
    	
    	if(email == null) {
            rttr.addFlashAttribute("message" , "비정상적인 접근 입니다. 다시 인증해 주세요");
            return "redirect:/login.fu";
        }
    	
    	try {
    		MemberDTO memberdto = memberdao.searchMember(email);
    		memberdto.setEnableEmail(1);
    		memberdao.SuccessAuth(memberdto);
		} catch (Exception e) {
			System.out.println(e.toString());
		}
        //model.addAttribute("login",checkdto);
        return "member/emailConfirm";
    }
	

}
