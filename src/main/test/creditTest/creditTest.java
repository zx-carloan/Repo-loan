package creditTest;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.third.autoloan.beans.CreditInfoBean;
import com.third.autoloan.clientmag.mapper.ClientMapper;
import com.third.autoloan.creditInfomag.service.ICreditService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"classpath:spring-context.xml"})
public class creditTest {

	@Resource(name="creditServiceImpl")
	private ICreditService creditService;
	@Resource
	private ClientMapper clientMapper;

	@Test
	public void saveCreditInfo() {
		CreditInfoBean bean=new CreditInfoBean();
	
		System.out.println(clientMapper.getClientInfoByOrderId(1));
	}
	
}
