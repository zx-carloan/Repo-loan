package contracttest;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.third.autoloan.contractmag.controller.ContractController;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"classpath:spring-context.xml"})
public class SignTest {

	@Resource
	private ContractController contractController;
	
	@Test
	public void signInfo() {
		contractController.signInfo(1L);
	}
}
