package com.tw.board.service;

import java.util.List;

import com.tw.board.vo.ReplyVO;

public interface ReplyService {
	
	public List<ReplyVO> replyList(int bno);

}
