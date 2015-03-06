package org.jp.rest.service.organization;

import java.util.List;

import org.jp.rest.domain.Organization;

/**
 * 
 * @author jeevan
 * @date 07-Mar-2015 12:10:42 am
 * @version
 *
 */
public interface OrganizationService {

	List<Organization> list();

	Boolean create(Organization org);
}
