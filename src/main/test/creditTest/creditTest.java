package creditTest;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.third.autoloan.beans.CreditInfoBean;
import com.third.autoloan.creditInfomag.service.ICreditService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"classpath:spring-context.xml"})
public class creditTest {

	@Resource(name="creditServiceImpl")
	private ICreditService creditService;
	
	@Test
	public void saveCreditInfo() {
		CreditInfoBean bean=new CreditInfoBean();
		bean.setEnquiriesNumber(1);
		bean.setHasCar(false);
		bean.setHasHouse(false);	
		creditService.saveCreditInfo(bean, 1l);
		System.out.println(bean);
		
	}
	
}
