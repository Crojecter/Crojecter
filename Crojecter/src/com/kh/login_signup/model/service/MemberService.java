package com.kh.login_signup.model.service;

import com.kh.login_signup.model.dao.MemberDao;
import com.kh.login_signup.model.vo.Member;

import static com.kh.common.JDBCTemplate.*;

import java.sql.Connection;

public class MemberService {
	
	private Connection con;
	private MemberDao mDao = new MemberDao();

	public int signUpMember(Member m) {
		
		int result = 0;
		
		con = getConnection();
		
		result = mDao.signUpMember(con, m);
		
		if(result > 0) commit(con);
		else rollback(con);
		
		close(con);
		
		return result;
		
	}

}
