package com.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.board.dao.MemberDAO;
import com.board.domain.Member;
import com.board.domain.Search;


@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private MemberDAO memberDAO;
	
	@Override
	public int insertMember(Member member) throws Exception {
		int count = memberDAO.insertMember(member);
		return count;
	}

	@Override
	public Member selectByNo(Member member) throws Exception {
		Member m = memberDAO.selectByNo(member);
		
		return m;
	}

	@Override
	public int updateMember(Member member) throws Exception {
		// TODO Auto-generated method stub
		int count = memberDAO.updateMember(member);
		return count;
	}

	@Override
	public int deleteMember(Member member) throws Exception {
		int count = memberDAO.deleteMember(member);
		return count;
	}

	@Override
	public List<Member> memberList() throws Exception {
		List<Member> memberList = memberDAO.memberList();
		return memberList;
	}

	public List<Member> memberSearch(Search search){
		// TODO Auto-generated method stub
		List<Member> memberList = memberDAO.searchMember(search);
		return memberList;
	}

	
}
