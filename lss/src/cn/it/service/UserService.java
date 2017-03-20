package cn.it.service;

import cn.it.entity.User;


public interface UserService extends BaseService<User> {

	public User selectUser(User user);
	
}
