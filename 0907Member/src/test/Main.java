package test;

import dao.UserDao;
import dao.UserDaoImpl;
import vo.TMember;

public class Main {

	public static void main(String[] args) {
		UserDao userDao = UserDaoImpl.sharedInstance();
		TMember member = new TMember();
		member.setEmail("lollol@gmail.com");
		member.setPw("12345678");
		member.setName("롤롤");
		member.setPhone("0100101");
		member.setAddr("화성");
		boolean r = userDao.registerMember(member);
		System.out.println(r);

	}
}
