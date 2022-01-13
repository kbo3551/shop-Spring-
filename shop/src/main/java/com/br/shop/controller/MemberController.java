package com.br.shop.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.br.shop.service.MemberService;
import com.br.shop.vo.Member;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Transactional
@Controller
public class MemberController {
	@Autowired MemberService memberService;
	// 회원가입
	@GetMapping("/addMember")
	public String addMember() {
		System.out.println("MemberController()_GETaddMember 실행");
		return "/addMember";
	}
	@PostMapping("addMember")
	public String postAddMember(HttpServletRequest request, RedirectAttributes redirect,Member member) {
		System.out.println("MemberController()_POSTaddMember 실행");
		log.debug("addMember_>>>>>>>>>>>>>>>>>>"+member.toString());
		memberService.addMember(member);
		return"/login";
	}
	// 로그인
	@GetMapping("/login")
	public String loginMember() {
		System.out.println("MemberController()_LoginMember 실행");
		return "/login";
	}
}
