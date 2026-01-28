package com.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.board.domain.Member;
import com.board.domain.Search;
import com.board.service.MemberServiceImpl;

import lombok.extern.slf4j.Slf4j;



@Slf4j
@Controller
public class MemberController {
	
	@Autowired
	MemberServiceImpl memberService;
	
	@GetMapping("/member/main")
	public String adsf() {
		
		return "member/main";
	}
	
	@GetMapping("member/joinForm")
	public String joinForm() {
		return "member/joinForm";
	}
	
	@PostMapping("member/joinFormPost")
	public String joinFormPost(Model model,Member member) {
		
		//TODO db에 연결해서 insert해주기
		try {
			int count = memberService.insertMember(member);
			if(count > 0) {
				return "member/joinResult";
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		
		return "member/joinResult";
	}
	
	@GetMapping("/member/memberList")
	public String memberList(Model model) {
		//todo db에서 모든 멤버를 셀렉해오기
		
		try {
			List<Member> memberList = memberService.memberList();
			model.addAttribute("member",memberList);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return "member/memberList";
	}
	
	@GetMapping("/member/memberDetail/{no}")
	public String memeberDetail(@PathVariable int no, Member member, Model model) {
		//todo 디비에서 no 로 멤버하나 가져오기
		log.info("no = "+ no);
		
		try {
			Member m = memberService.selectByNo(member);
			model.addAttribute("member", m);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return "member/memberDetail";
	}
	
	@GetMapping("/member/update/{no}")
	public String update(@PathVariable int no, Model model) {
		//todo 디비에서 no 로 멤버하나 가져오기
		log.info("no = "+ no);
		Member member = new Member();
		member.setNo(no);
		// 멤버no를 가지고 멤버하나를 가져오기
		try {
			Member m = memberService.selectByNo(member);
			model.addAttribute("member", m);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return "member/memberUpdate";
	}
	
	@PostMapping("/member/updatePost")
	public String postMethodName(Member member, Model model) {
		//TODO 디비로 정보 받아서 수정
		try {
			int count = memberService.updateMember(member);
			if (count > 0) {
				log.info("수정 성공");
				return "member/main";
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		log.info("수정 실패");
		return "member/memberList";
	}
	
	@GetMapping("/member/delete/{no}")
	public String postMethodName(@PathVariable int no) {
		//TODO no를 디비로 넘겨서 삭제 수행
		
		Member member = new Member();
		member.setNo(no);
		int count;
		try {
			count = memberService.deleteMember(member);
			if (count > 0) {
				log.info("삭제 성공");
				return "member/main";
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		log.info("삭제 실패");
		 return "member/main";
	}
	
	@GetMapping("/member/searchList")
	public String memberSearch(Search search,Model model) {
		//TODO: process POST request
		List<Member> memberList = memberService.memberSearch(search);
		log.info(memberList.toString());
		model.addAttribute("member",memberList);
		return "member/memberList";
	}
	
	
	
	

}
