package com.tw.board.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.tw.board.vo.BoardVO;
import com.tw.board.vo.Criteria;

@Mapper
public interface BoardMapper {
	
	public List<BoardVO> getList();
	public List<BoardVO> getListPaging(Criteria cri);
	public int getTotal(Criteria cri);
	public BoardVO getPage(int bno);
	public void enroll(BoardVO board);
	public int modify(BoardVO board);

}
