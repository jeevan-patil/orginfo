package org.jp.rest.service.user;

import java.util.ArrayList;
import java.util.List;

import org.jp.rest.dao.user.UserDao;
import org.jp.rest.domain.User;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

/**
 * 
 * @author jeevan
 * @date 21-Feb-2015 11:45:02 pm
 * @version 
 *
 */
@Service("userService")
public class UserServiceImpl implements UserService {
	private static final Logger _log = LoggerFactory.getLogger(UserServiceImpl.class);
	
	@Autowired
	private UserDao userDao;

	@Override
	@Transactional(propagation = Propagation.REQUIRED, readOnly = true)
	public List<User> listAllUsers() {
		List<User> users = new ArrayList<User>();
		try {
			users = userDao.listAllUsers();
		} catch(Exception e) {
			_log.error("Error occurred while fetching user list.");
		}
		return users;
	}

}
