package org.mvc.service;

import org.mvc.bean.MyMemberDTO;
import org.mvc.mybatis.MyMemberMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.Setter;

@Service
public class MyMemberImpl implements MyMemberS{

	@Setter(onMethod_=@Autowired)
	private MyMemberMapper mapper;

	@Override
	public int insertMember(MyMemberDTO dto) {
		return mapper.insertMember(dto);
	}

	@Override
	public MyMemberDTO userCheck(MyMemberDTO dto) {
		return mapper.userCheck(dto);
	}
	
	@Override
	public int loginCheck(MyMemberDTO dto) {
		return mapper.loginCheck(dto);
	}

	@Override
	public MyMemberDTO getMember(String id) {
		return mapper.getMember(id);
	}

	@Override
	public int updateMember(MyMemberDTO mymemberDTO) {
		return mapper.updateMember(mymemberDTO);
	}

	@Override
	public int deleteMember(MyMemberDTO dto) {
		return mapper.deleteMember(dto);
	}

	@Override
	public int idCheck(String id) {
		return mapper.idCheck(id);
	}

}
