package com.board.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.board.domain.Board;
import com.board.domain.Member;
import com.board.domain.Search;

@Repository
public class MemberDAO {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	public int insertMember(Member member) {

		// todo 디비에 멤버 삽입하기
		String query = "insert into registerMember values(registerMember_seq.nextval, ?, ?, ?, ?)";
		int count = jdbcTemplate.update(query, member.getName(), member.getUserId(), member.getPassword(),
				member.getAge());
		return count;
	}

	public List<Member> memberList() {
		String query = "select * from registermember";

		List<Member> memberList = jdbcTemplate.query(query, new RowMapper<Member>() {
			@Override
			public Member mapRow(ResultSet rs, int rowNum) throws SQLException {
				Member member = new Member();
				member.setNo(rs.getInt("no"));
				member.setName(rs.getString("name"));
				member.setUserId(rs.getString("userId"));
				member.setPassword(rs.getString("password"));
				member.setAge(rs.getInt("age"));
				return member;
			}

		});

		return memberList;

	}

	public Member selectByNo(Member member) {
		String query = "select * from registerMember where no = ?";

		List<Member> memberList = jdbcTemplate.query(query, new RowMapper<Member>() {
			@Override
			public Member mapRow(ResultSet rs, int rowNum) throws SQLException {
				Member member = new Member();
				member.setNo(rs.getInt("no"));
				member.setName(rs.getString("name"));
				member.setUserId(rs.getString("userId"));
				member.setPassword(rs.getString("password"));
				member.setAge(rs.getInt("age"));
				return member;
			}
		}, member.getNo());

		return memberList.isEmpty() ? null : memberList.get(0);
	}

	public int updateMember(Member member) {
		String query = "UPDATE registerMember SET name = ?, age = ? WHERE no = ?";
		int count = jdbcTemplate.update(query, member.getName(), member.getAge(), member.getNo());
		return count;
	}

	public int deleteMember(Member member) {
		// TODO Auto-generated method stub
		String query = "DELETE from registermember where no = ?";
		int count = jdbcTemplate.update(query, member.getNo());
		return count;
	}

	public Member memberSearch(Member member) {
		// TODO Auto-generated method stub
		String query = "";
		List<Member> memberList = jdbcTemplate.query(query, new RowMapper<Member>() {
			@Override
			public Member mapRow(ResultSet rs, int rowNum) throws SQLException {
				Member member = new Member();
				member.setNo(rs.getInt("no"));
				member.setName(rs.getString("name"));
				member.setUserId(rs.getString("userId"));
				member.setPassword(rs.getString("password"));
				member.setAge(rs.getInt("age"));
				return member;
			}
		}, member.getNo());

		return memberList.isEmpty() ? null : memberList.get(0);
	}

	public List<Member> searchMember(Search search) {
		
		String searchItem = search.getSearchType();
		List<String> searchList = Arrays.asList("name", "age");
		if (!searchList.contains(search.getSearchType())) {
			// 검색타입이 존재하지 않으면 기본검색은 title로 하게된다.
			searchItem = "name";
		}
		String query = "select * from registermember where "+searchItem+" like '%"+search.getKeyword()+"%'";
		List<Member> memberList = jdbcTemplate.query(query, new RowMapper<Member>() {
			@Override
			public Member mapRow(ResultSet rs, int rowNum) throws SQLException {
				Member member = new Member();
				member.setNo(rs.getInt("no"));
				member.setName(rs.getString("name"));
				member.setUserId(rs.getString("userId"));
				member.setPassword(rs.getString("password"));
				member.setAge(rs.getInt("age"));
				return member;
			}
		});
		return memberList;
	}

}
