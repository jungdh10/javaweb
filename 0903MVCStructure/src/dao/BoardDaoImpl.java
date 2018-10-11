package dao;

public class BoardDaoImpl implements BoardDao {
	//singleton 패턴 적용
	
	//1.생성자를 private 으로 해서 다른 곳에서 new를 이용한
	//인스턴스 생성을 못하게 합니다.
	private BoardDaoImpl() {}
	
	//static 변수로 자신의 인스턴스를 저장할 수 있는 변수를 선언
	private static BoardDao boardDao;
	
	//인스턴스를 생성해서 리턴해주는 static 메소드를 생성
	public static BoardDao getInstance() {
		if(boardDao == null) {
			boardDao = new BoardDaoImpl();
		}
		return boardDao;
	}
}






