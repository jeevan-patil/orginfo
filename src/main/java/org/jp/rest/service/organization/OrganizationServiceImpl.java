package org.jp.rest.service.organization;

import java.util.ArrayList;
import java.util.List;

import org.jp.rest.dao.organization.OrganizationDao;
import org.jp.rest.domain.Organization;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

/**
 * 
 * @author jeevan
 * @date 07-Mar-2015 12:12:25 am
 * @version 
 *
 */
@Service("orgService")
public class OrganizationServiceImpl implements OrganizationService {
	private static final Logger _log = LoggerFactory.getLogger(OrganizationServiceImpl.class);

	@Autowired
	private OrganizationDao orgDao;

	@Override
	@Transactional(propagation = Propagation.REQUIRED, readOnly = true)
	public List<Organization> list() {
		List<Organization> orgList = new ArrayList<Organization>();
		try {
			orgList = orgDao.list();
		} catch(Exception e) {
			_log.error("Error occurred while fetching org list.");
		}
		return orgList;
	}

	@Override
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false)
	public Boolean create(Organization org) {
		boolean response = false;
		try {
			orgDao.create(org);
			response = true;
		} catch(Exception e) {
			_log.error("Error occurred creating an organization.");
		}
		return response;
	}

}
