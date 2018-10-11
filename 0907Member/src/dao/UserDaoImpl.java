package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import vo.TMember;

public class UserDaoImpl implements UserDao {
	// 데이터베이스 연결을 위한 변수
	private Connection con;
	private PreparedStatement pstmt;
	private ResultSet rs;

	private UserDaoImpl() {}

	private static UserDao userDao;

	public static UserDao sharedInstance() {
		if (userDao == null) {
			userDao = new UserDaoImpl();
		}
		return userDao;
	}

	@Override
	public TMember login(TMember tmember) {
		//넘어온 파라미터를 출력
		//email 과 pw가 제대로 저장되었는지 확인
		System.out.println("넘어온 데이터:" + tmember);
		TMember user = null;
		try {
			//데이터베이스 접속
			
			//context.xml 파일의 내용을 읽어오기
			Context init = new InitialContext();
			//읽은 내용 중에서 DBcon이라는 이름의 내용을 읽어서 데이터베이스 접속정보를 생성합니다.
			DataSource ds = (DataSource) init.lookup("java:comp/env/DBConn");
			//접속정보를 이용해서 커넥션을 빌려오기
			con = ds.getConnection();

			//Statement 인스턴스를 생성하고 SQL 실행
			pstmt = con.prepareStatement("select email, name from tmember "+ "where trim(email)=? and trim(pw)=?");
			//?에 값 채우기
			pstmt.setString(1, tmember.getEmail().trim());
			pstmt.setString(2, tmember.getPw().trim());
			//SQL 실행
			rs = pstmt.executeQuery();
			
			//결과를 읽기
			//읽은 데이터가 있는 경우에 user에 인스턴스를 생성해서 대입
			//읽은 데이터가 없으면 user는 null
			if(rs.next()) {
				//인스턴스를 생성하고 결과를 저장
				user = new TMember();
				user.setEmail(rs.getString("email"));
				user.setName(rs.getString("name"));
			}
		}catch(Exception e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
		}finally {
			try {
			if(rs != null)rs.close();
			if(pstmt != null)pstmt.close();
			if(con != null)con.close();
			}catch(Exception e) {}
		}
		
		
		//email 과 pw가 일치하는 데이터가 없으면 null이 리턴되고 일치하는 데이터가 있으면 인스턴스를 생성해서 리턴
		System.out.println("리턴하는 데이터:" + user);
		return user;
	}

	@Override
	public boolean registerMember(TMember member) {
		boolean result = false;
		try {
			//데이터베이스 접속
			//context.xml 파일의 내용을 읽어오기
			Context init = new InitialContext();
			//읽은 내용 중에서 DBcon이라는 이름의 내용을 읽어서 데이터베이스 접속정보를 생성합니다.
			DataSource ds = (DataSource) init.lookup("java:comp/env/DBConn");
			//접속정보를 이용해서 커넥션을 빌려오기
			con = ds.getConnection();

			//SQL 실행 객체 생성
			pstmt = con.prepareStatement("insert into tmember(email, pw, name, phone, addr) "+ "values(?,?,?,?,?)");
			//?에 데이터 바인딩
			pstmt.setString(1,  member.getEmail());
			pstmt.setString(2,  member.getPw());
			pstmt.setString(3,  member.getName());
			pstmt.setString(4,  member.getPhone());
			pstmt.setString(5,  member.getAddr());
			//sql 실행
			int r = pstmt.executeUpdate();
			if(r > 0)
				result = true;
		}catch(Exception e) {
			//예외메시지 확인
			System.out.println(e.getMessage());
			//예외를 역추적
			e.printStackTrace();
		}finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(con != null)con.close();
			}catch(Exception e) {}
		}
		return result;
	}

	@Override
	public boolean emailCheck(String email) {
		boolean result = false;
		try {
			//데이터베이스 접속
			//context.xml 파일의 내용을 읽어오기
			Context init = new InitialContext();
			//읽은 내용 중에서 DBcon이라는 이름의 내용을 읽어서 데이터베이스 접속정보를 생성합니다.
			DataSource ds = (DataSource) init.lookup("java:comp/env/DBConn");
			//접속정보를 이용해서 커넥션을 빌려오기
			con = ds.getConnection();

			//SQL 실행 객체 생성
			pstmt = con.prepareStatement("select email from tmember where email = ?");
			//?에 데이터 바인딩
			pstmt.setString(1,email);
			
			//SQL 실행
			rs = pstmt.executeQuery();
			
			//데이터가 검색되면 result 는 true
			if(rs.next()) {
				result = true;
			}
			
		}catch(Exception e) {
			//예외메시지 확인
			System.out.println(e.getMessage());
			//예외를 역추적
			e.printStackTrace();
		}finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(con != null)con.close();
			}catch(Exception e) {}
		}
		
		return result;
	}
}
















