package com.companyname.service;

import com.companyname.dao.RegistrationDao;
import com.companyname.dao.RegistrationDaoImpl;
import com.companyname.model.RegistrationModel;

public class RegistrationServiceImpl implements RegistrationService{

	RegistrationDao registrationDao;
	@Override
	public void registration(RegistrationModel regmodel) {
		
		registrationDao=new RegistrationDaoImpl();
		
		registrationDao.registration(regmodel);
	}

}
