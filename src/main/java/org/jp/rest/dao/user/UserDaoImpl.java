package org.jp.rest.dao.user;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.jp.rest.domain.User;
import org.springframework.stereotype.Repository;

/**
 * 
 * @author jeevan
 * @date 21-Feb-2015 11:42:31 pm
 * @version 
 *
 */
@Repository("userDao")
public class UserDaoImpl implements UserDao {
	
	@PersistenceContext
        private EntityManager entityManager;

	@SuppressWarnings("unchecked")
	@Override
	public List<User> listAllUsers() throws Exception {
		return entityManager.createQuery("select u from User u").getResultList();
	}

}
