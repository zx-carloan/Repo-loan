package usermagtest;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.third.autoloan.beans.UserBean;
import com.third.autoloan.usermag.service.IUserGetService;
import com.third.autoloan.usermag.service.impl.UserServiceImpl;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"classpath:spring-context.xml"})
public class UserTest {

	@Resource
	private IUserGetService userGetServiceImpl;
	
	@Resource
	private UserServiceImpl userSeviceImpl;
/*	
	@Test
	public void add() {
		UserBean user = new UserBean();
		user.setUserName("小红");
		user.setPassword("123456");
		user.setLoginName("xiaohong");
		userSeviceImpl.saveUserInfo(user);
		
	}*/
	
/*	@Test
	public void delete() {
		userSeviceImpl.deleteUserInfo(1l);
		
	}*/
/*	
	@Test
	public void update() {
		UserBean user = new UserBean();
		user.setId(2);
		user.setUserName("小白");
		userSeviceImpl.updateUserInfo(user);
		
	}*/
	
	/*@Test
	public void find() {
		UserBean user = new UserBean();
		user.setLoginName("xiaohong");
		user.setPassword("123456");
		boolean  boo = userGetServiceImpl.isUser(user);
		System.out.println(boo);
	}
	*/
	
	
}
