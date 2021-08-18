package com.tw.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tw.board.mapper.BoardMapper;
import com.tw.board.vo.BoardVO;
import com.tw.board.vo.Criteria;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	private BoardMapper mapper;
	
	@Override
	public List<BoardVO> getList() {
		// TODO Auto-generated method stub
		return mapper.getList();
	}

	@Override
	public List<BoardVO> getListPaging(Criteria cri) {
		// TODO Auto-generated method stub
		return mapper.getListPaging(cri);
	}

	@Override
	public int getTotal(Criteria cri) {
		// TODO Auto-generated method stub
		return mapper.getTotal(cri);
	}

	@Override
	public BoardVO getPage(int bno) {
		// TODO Auto-generated method stub
		return mapper.getPage(bno);
	}

	@Override
	public void enroll(BoardVO board) {
		// TODO Auto-generated method stub
		mapper.enroll(board);
		
	}

	@Override
	public int modify(BoardVO board) {
		// TODO Auto-generated method stub
		return mapper.modify(board);
	}

}
