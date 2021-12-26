package org.mvc.service;

import java.util.List;

import org.mvc.bean.MyBoardDTO;
import org.mvc.mybatis.MyBoardMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.Setter;

@Service
public class MyBoardImpl implements MyBoardS{

	@Setter(onMethod_=@Autowired)
	private MyBoardMapper mapper;
	
	@Override
	public List<MyBoardDTO> getList(int start, int end) {
		return mapper.getList(start, end);
	}

	@Override
	public int myboardWrite(MyBoardDTO dto) {
		return mapper.insert(dto);
	}
	
	@Override
	public int contentCount() {
		return mapper.contentCount();
	}
	
	@Override
	public int contentMaxNum() {
		return mapper.contentMaxNum();
	}
	
	@Override
	public int re_stepUpdate(int ref, int re_step) {
		return mapper.re_stepUpdate(ref, re_step);
	}
	
	@Override
	public int readCount(int num) {
		return mapper.readCount(num);
	}

	@Override
	public int myboardUpdate(MyBoardDTO dto) {
		return mapper.update(dto);
	}

	@Override
	public int myboardDelete(MyBoardDTO dto) {
		return mapper.delete(dto);
	}

	@Override
	public MyBoardDTO getRead(int num) {
		return mapper.read(num);
	}
	
}