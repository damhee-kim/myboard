package org.mvc.service;

import java.util.List;

import org.mvc.bean.MyBoardDTO;

public interface MyBoardS {

	public List<MyBoardDTO> getList(int start, int end);
	
	public int myboardWrite(MyBoardDTO dto);
	
	public int contentCount();
	
	public int contentMaxNum();
	
	public int re_stepUpdate(int ref, int re_step);
	
	public int readCount(int num);
	
	public MyBoardDTO getRead(int num);

	public int myboardUpdate(MyBoardDTO dto);
	
	public int myboardDelete(MyBoardDTO dto);

}
