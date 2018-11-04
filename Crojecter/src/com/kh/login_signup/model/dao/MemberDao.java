package com.kh.login_signup.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Properties;

import com.kh.login_signup.model.vo.Member;
import static com.kh.common.JDBCTemplate.*;

public class MemberDao {
	
	private Properties prop = new Properties();
	private PreparedStatement pstmt = null;
	
	public MemberDao(){
		
		String filePath = MemberDao.class.getResource("/config/member-query.properties").getPath();
		
		try {
		
			prop.load(new FileReader(filePath));
			
		} catch (IOException e) {
			
			e.printStackTrace();
			
		}
		
	}

	public int signUpMember(Connection con, Member m) {
		
		int result = 0;
		
		String sql = prop.getProperty("insertMember");
		
		try {
			
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, m.getMemail());
			pstmt.setString(2, m.getMpwd());
			pstmt.setString(3, m.getMname());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {

			e.printStackTrace();
			
		} finally {
			
			close(pstmt);
			
		}
		
		return result;
		
	}

}
