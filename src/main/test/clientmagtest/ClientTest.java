package clientmagtest;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.third.autoloan.beans.ClientBean;
import com.third.autoloan.clientmag.mapper.ClientMapper;
import com.third.autoloan.clientmag.service.IClientGetService;
import com.third.autoloan.clientmag.service.IClientService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"classpath:spring-context.xml"})
public class ClientTest {

	
	@Resource
	private IClientGetService clientGetServiceImpl;
	
	@Resource
	private IClientService clientServiceImpl;
	
	@Resource
	private ClientMapper cm ;
	
/*	@Test
	public void add() {
		ClientBean client = new ClientBean();
		client.setName("000");
		
		clientServiceImpl.addClient(client);
		
	}
	*/
/*	
	@Test
	public void delete() {
		
		clientServiceImpl.deleteClient(3l);
		
	}
	*/
	
	
/*	@Test
	public void update() {
	
		ClientBean client = new ClientBean();
		client.setId(2l);
		client.setName("55");
		clientServiceImpl.updateClient(client);
		
		
	}*/
	
	
	@Test
	public void find() {
		ClientBean clientBean = clientGetServiceImpl.getClientInfoByOrderId(1);
//		clientBean=cm.getClientInfoByClientId(clientBean.getId());
		System.out.println(clientBean);
		System.out.println(clientGetServiceImpl);
	}
	
}
