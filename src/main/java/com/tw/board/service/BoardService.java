package com.tw.board.service;

import java.util.List;

import com.tw.board.vo.BoardVO;
import com.tw.board.vo.Criteria;

public interface BoardService {
	
	public List<BoardVO> getList();
	public List<BoardVO> getListPaging(Criteria cri);
	public int getTotal(Criteria cri);
	public BoardVO getPage(int bno);
	public void enroll(BoardVO board);
	/*게시판 수정*/
	public int modify(BoardVO board);

}
