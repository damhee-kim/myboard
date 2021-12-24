package org.mvc.mybatis;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.mvc.bean.MyBoardDTO;

public interface MyBoardMapper {

	public List<MyBoardDTO> getList(@Param("start") int start, @Param("end") int end );
	
	public int insert(MyBoardDTO dto);
	
	public int contentCount();
	
	public int contentMaxNum();
	
	public int re_stepUpdate(@Param("ref") int ref, @Param("re_step") int re_step);
	
	public int readCount(int num);
	
	public MyBoardDTO read(int num);
	
	public int delete(MyBoardDTO dto);
	
	public int update (MyBoardDTO dto);
	

}
