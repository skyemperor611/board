package com.tw.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tw.board.mapper.ReplyMapper;
import com.tw.board.vo.ReplyVO;

@Service
public class ReplyServiceImpl implements ReplyService {
	
	@Autowired
	private ReplyMapper mapper;

	@Override
	public List<ReplyVO> replyList(int bno) {
		// TODO Auto-generated method stub
		return mapper.replyList(bno);
	}

}
