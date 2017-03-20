package cn.it.service.impl;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import cn.it.redis.core.RedisTemplate;
import cn.it.service.RedisService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath*:applicationContext.xml" })
public class RedisServiceImpl implements RedisService {
	@Autowired
	private RedisTemplate redisTemplate;
	
	@Test
	@Override
	public void test() {
		// TODO Auto-generated method stub
		redisTemplate.set("k1", "v1");
		String str = (String) redisTemplate.get("k1");
		System.out.println("result:"+str);
	}

}
