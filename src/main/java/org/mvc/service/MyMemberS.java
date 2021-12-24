package org.mvc.service;

import org.mvc.bean.MyMemberDTO;

public interface MyMemberS {

	public int insertMember(MyMemberDTO dto);
	
	public MyMemberDTO userCheck(MyMemberDTO dto);
	
	public int loginCheck(MyMemberDTO dto);

	public MyMemberDTO getMember(String id);
	
	public int updateMember(MyMemberDTO dto);
	
	public int deleteMember(MyMemberDTO dto);
	
	public int idCheck(String id);

}
