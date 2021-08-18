package com.tw.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.tw.board.DTO.PageMakerDTO;
import com.tw.board.service.BoardService;
import com.tw.board.service.ReplyService;
import com.tw.board.vo.BoardVO;
import com.tw.board.vo.Criteria;
import com.tw.board.vo.ReplyVO;

@Controller
public class BoardController {
	
	@Autowired
	private BoardService service;
	
	@Autowired
	private ReplyService reservice;
	
	@RequestMapping(value = "list", method = RequestMethod.GET)
	public String list(Model model, Criteria cri) {
		List<BoardVO> list = service.getListPaging(cri);
		model.addAttribute("list",list);
		
		int total = service.getTotal(cri);
		
		PageMakerDTO pageMaker = new PageMakerDTO(cri, total);
		
		model.addAttribute("pageMaker",pageMaker);
		
		
		
		return "boardList";
	}
	
	@RequestMapping(value = "get", method = RequestMethod.GET)
	public String boardGetPageGET(@RequestParam("bno")int bno, Model model) {
		
		BoardVO pageInfo = service.getPage(bno);
		
		
		model.addAttribute("pageInfo", pageInfo);
		
		List<ReplyVO> replyList = reservice.replyList(bno);
		model.addAttribute("replyList",replyList);
		return "get";
	}
	@RequestMapping(value = "enroll", method = RequestMethod.GET)
	public void boardEnrollGET() {
		
	
		
	
		
	}
	
	
	@RequestMapping(value = "enroll", method = RequestMethod.POST)
	public String boardEnrollPOST(BoardVO board, RedirectAttributes rttr) {
		
		service.enroll(board);
		
		rttr.addFlashAttribute("result", "enroll success");
		
		return "redirect:/list";
		
	}
	
	@RequestMapping(value="modify", method = RequestMethod.GET)
	public void boardModifyGET(@RequestParam("bno")int bno, Model model) {
		model.addAttribute("pageInfo", service.getPage(bno));
	}
	
	@RequestMapping(value = "modify", method = RequestMethod.POST)
	public String boardModifyPOST(BoardVO board, RedirectAttributes rttr) {
		
		service.modify(board);
		
		rttr.addFlashAttribute("result","modify success");
		return null;
		
	}

}
