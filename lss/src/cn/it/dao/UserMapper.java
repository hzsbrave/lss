package cn.it.dao;

import cn.it.entity.User;

public interface UserMapper extends BaseMapper<User> {
	
	public User selectUser(User user);
}