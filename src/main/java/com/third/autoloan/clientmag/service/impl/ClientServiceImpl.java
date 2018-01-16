package com.third.autoloan.clientmag.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.third.autoloan.beans.ClientBean;
import com.third.autoloan.clientmag.repository.ClientRepository;
import com.third.autoloan.clientmag.service.IClientService;

@Service
public class ClientServiceImpl implements IClientService {

	@Resource
	private ClientRepository clientRepository;
	@Override
	public void addClient(ClientBean client) {
		// TODO Auto-generated method stub
		
		clientRepository.save(client);

	}

	@Override
	public void deleteClient(Long id) {
		// TODO Auto-generated method stub

		clientRepository.delete(id);
		
	}

	@Override
	public void updateClient(ClientBean client) {
		// TODO Auto-generated method stub
		
		
		clientRepository.saveAndFlush(client);

	}

}
