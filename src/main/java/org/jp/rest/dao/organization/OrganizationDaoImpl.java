package org.jp.rest.dao.organization;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.jp.rest.domain.Organization;
import org.springframework.stereotype.Repository;

/**
 * 
 * @author jeevan
 * @date 07-Mar-2015 12:14:50 am
 * @version 
 *
 */
@Repository("orgDao")
public class OrganizationDaoImpl implements OrganizationDao {

	@PersistenceContext
    private EntityManager entityManager;

	@SuppressWarnings("unchecked")
	@Override
	public List<Organization> list() throws Exception {
		return entityManager.createQuery("select o from Organization o").getResultList();
	}

	@Override
	public void create(Organization org) throws Exception {
		entityManager.persist(org);
	}

}
