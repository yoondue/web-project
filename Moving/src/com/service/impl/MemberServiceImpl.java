package com.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.logging.log4j.Logger;

import com.dto.Member;
import com.service.MemberService;

public class MemberServiceImpl implements MemberService{
	
	/** 처리 결과를 기록할 Log4J 객체 생성 */
	// --> import org.apache.logging.log4j.Logger;
	Logger logger;

	/** MyBatis */
	// --> import org.apache.ibatis.session.SqlSession
	SqlSession sqlSession;
	
	/** 생성자를 통한 객체 생성 */
	public MemberServiceImpl(SqlSession sqlSession, Logger logger) {
		this.sqlSession = sqlSession;
		this.logger = logger;
	}

	// 회원 목록 조회
	@Override
	public List<Member> selectMemberList() throws Exception {
		List<Member> result = null;
		
		try {
			result = sqlSession.selectList("MemberMapper.selectMemberList", null);
			if (result == null) {
				throw new NullPointerException();
			}
		}catch(NullPointerException e) {
			sqlSession.rollback();
			throw new Exception("조회된 회원 목록이 없습니다.");
		}catch (Exception e) {
			logger.error(e.getLocalizedMessage());
			throw new Exception("회원 목록 조회에 실패했습니다.");
		}
		
		return result;
	}

}
