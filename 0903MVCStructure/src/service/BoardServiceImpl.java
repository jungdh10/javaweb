package service;

import dao.BoardDao;
import dao.BoardDaoImpl;

public class BoardServiceImpl implements BoardService {
	//서비스에서는 저장소를 사용
	private BoardDao boardDao;
	
	//싱글톤 패턴 적용
	
	private BoardServiceImpl() {
		//Dao 객체 생성
		boardDao = BoardDaoImpl.getInstance();
	}
	
	private static BoardService boardService;
	
	public static BoardService getInstance() {
		if(boardService == null) {
			boardService = new BoardServiceImpl();
		}
		return boardService;
	}
}
