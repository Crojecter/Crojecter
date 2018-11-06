package com.kh.login_signup.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
<<<<<<< HEAD
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import com.kh.login_signup.model.vo.Member;
import static com.kh.common.JDBCTemplate.*;

public class MemberDao {
	
	private Properties prop = new Properties();
	private PreparedStatement pstmt = null;
	private ResultSet rset = null;
	
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

	public Member selectMember(Connection con, Member m) {
		
		Member result = null;
		
		String sql = prop.getProperty("selectMember");
		
		try {
			
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, m.getMemail());
			pstmt.setString(2, m.getMpwd());
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				
				result = new Member();
				
				result.setMid(rset.getInt(1));
				result.setMprofile(rset.getString(2));
				result.setMemail(rset.getString(3));
				result.setMpwd(rset.getString(4));
				result.setMname(rset.getString(5));
				result.setMdate(rset.getDate(6));
				result.setMhodu(rset.getInt(7));
				result.setMsid(rset.getInt(8));
				
			}
			
		} catch (SQLException e) {
			
			e.printStackTrace();
			
		} finally {
			
			close(rset);
=======
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
			
>>>>>>> refs/heads/master
			close(pstmt);
			
		}
		
		return result;
		
	}

}
