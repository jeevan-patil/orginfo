package org.jp.rest.service.organization;

import java.util.ArrayList;
import java.util.List;

import org.jp.rest.dao.organization.OrganizationDao;
import org.jp.rest.domain.Organization;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
	public Boolean create(Organization org) {
		boolean response = true;
		try {
			orgDao.create(org);
		} catch(Exception e) {
			_log.error("Error occurred creating an organization.");
			response = false;
		}
		return response;
	}

}
