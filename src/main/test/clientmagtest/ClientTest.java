package clientmagtest;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.third.autoloan.beans.ClientBean;
import com.third.autoloan.clientmag.service.IClientGetService;
import com.third.autoloan.clientmag.service.IClientService;
import com.third.autoloan.clientmag.service.impl.ClientGetServiceImpl;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"classpath:spring-context.xml"})
public class ClientTest {

	
	@Resource
	private IClientGetService clientGetServiceImpl;
	
	@Resource
	private IClientService clientServiceImpl;
	
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
	
/*	
	@Test
	public void find() {
		 
		System.out.println(clientGetServiceImpl.getClientInfoByOrderId(1));
	}*/
	
}
