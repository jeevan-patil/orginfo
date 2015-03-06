package org.jp.rest.dao.organization;

import java.util.List;

import org.jp.rest.domain.Organization;

/**
 * 
 * @author jeevan
 * @date 07-Mar-2015 12:12:48 am
 * @version
 *
 */
public interface OrganizationDao {
	List<Organization> list() throws Exception;

	void create(Organization org) throws Exception;
}
