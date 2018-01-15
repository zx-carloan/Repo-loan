package IdentitymagTest;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.third.autoloan.beans.IdentityBean;
import com.third.autoloan.identitymag.dao.IidentityDao;
import com.third.autoloan.identitymag.service.IidentityService;
import com.third.autoloan.identitymag.service.impl.IdentityServiceImpl;

@RunWith(value=SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"classpath:applicationContext.xml"})
public class TestIdentity {
	
	@Resource
	private IidentityService identityServiceImpl;
	
	
	@Test
	public void testCheck() {
		IdentityBean bean=identityServiceImpl.getIdentityInfoByIdentityNum("421023188712230912");
		/*IdentityBean bean=identityServiceImpl.getIdentityInfoByIdentityNum("421023188712230912");*/
		System.out.println(bean);
	}
	
	@Test
	public void testSave() {
		IdentityBean bean=new IdentityBean();
		bean.setAddress("哈哈");
		bean.setEthnic("汉");
		identityServiceImpl.saveIdentityInfo(bean);
		System.out.println("111");
	}
	@Test
	public void a() {
		System.out.println(11111);
	}
}
