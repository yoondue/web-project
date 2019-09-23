package com.service;

import java.util.List;

import com.dto.Member;

public interface MemberService {
	
	public List<Member> selectMemberList() throws Exception;

}
