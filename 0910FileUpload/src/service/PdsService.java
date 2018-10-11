package service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import vo.Pds;

public interface PdsService {
	//데이터 삽입을 처리하기 위한 메소드
	public boolean insertPds(HttpServletRequest request);
	//테이블의 전체 데이터를 가져오는 메소드
	public List<Pds> listPds(HttpServletRequest request);
}






