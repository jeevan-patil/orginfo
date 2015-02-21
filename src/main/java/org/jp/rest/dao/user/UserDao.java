package org.jp.rest.dao.user;

import java.util.List;

import org.jp.rest.domain.User;

/**
 * 
 * @author jeevan
 * @date 21-Feb-2015 11:42:03 pm
 * @version 
 *
 */
public interface UserDao {
	List<User> listAllUsers();
}
