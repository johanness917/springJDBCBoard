package com.board.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.board.domain.Board;
import com.board.domain.Member;



public interface MemberService {

	public int insertMember(Member member) throws Exception; 
	public Member selectByNo(Member member) throws Exception; 
	public int updateMember(Member member) throws Exception; 
	public int deleteMember(Member member) throws Exception; 
	public List<Member> memberList() throws Exception; 

}
