package com.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.board.domain.Board;
import com.board.service.BoardService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/board")
public class BoardController {
	@Autowired
	private BoardService boardService;

	@GetMapping("/insertForm")
	public String boardInsertForm(Model model) {
		return "board/insertForm";
	}

	@PostMapping("/insert")
	public String boardInsert(Board board, Model model) {
		log.info("insert board=" + board.toString());
		try {
			int count = boardService.insertBoard(board);
			if (count > 0) {
				return "board/success";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "board/failed";
	}

	@GetMapping("/boardList") // 오타 수정
	public String boardList(Model model) {
	    log.info("boardList 호출");
	    try {
	        List<Board> boardList = boardService.boardList();
	        model.addAttribute("boardList", boardList); // 이름 일치 시킴
	    } catch (Exception e) {
	        log.error("게시판 목록 조회 중 오류 발생: ", e); // 에러 로그 기록 필수
	        return "boardList"; // 에러 발생 시 에러 페이지로 유도
	    }
	    return "board/boardList"; // 실제 파일명과 매칭
	}
	
	@GetMapping("/detail") // 오타 수정
	public String boardDetail(Board b, Model model) {
	    log.info("boardDetail board="+b.toString());
	    try {
	        Board board = boardService.selectByNo(b);
	        if (board == null) {
				return "board/failed";
			}
	        model.addAttribute("board", board); // 이름 일치 시킴
	    } catch (Exception e) {
	        log.error("게시판 목록 조회 중 오류 발생: ", e); // 에러 로그 기록 필수
	        return "boardList"; // 에러 발생 시 에러 페이지로 유도
	    }
	    return "board/detail"; // 실제 파일명과 매칭
	}
	
}