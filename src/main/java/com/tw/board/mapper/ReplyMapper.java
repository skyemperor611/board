package com.tw.board.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.tw.board.vo.ReplyVO;

@Mapper
public interface ReplyMapper {
	
	public List<ReplyVO> replyList(int bno);

}
