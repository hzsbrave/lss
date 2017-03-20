package cn.it.service.impl;

import org.springframework.stereotype.Service;

import cn.it.entity.User;
import cn.it.service.UserService;

@Service("userService")
public class UserServiceImpl extends BaseServiceImpl<User> implements UserService {

	@Override
	public User selectUser(User user) {
		return userMapper.selectUser(user);
	}
	
	
	
	
}
