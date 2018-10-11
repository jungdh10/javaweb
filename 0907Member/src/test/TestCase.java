package test;

import org.junit.Test;

import dao.UserDao;
import dao.UserDaoImpl;
import vo.TMember;

public class TestCase {
	@Test
	public void sampleTest() {
		UserDao userDao = UserDaoImpl.sharedInstance();
		System.out.println(userDao.emailCheck("gd@gmail.com"));
	}
}










