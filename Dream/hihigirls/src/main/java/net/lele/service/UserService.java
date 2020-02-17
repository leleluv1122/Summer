package net.lele.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import net.lele.domain.User;
import net.lele.mapper.UserMapper;

@Service("net.lele.service.UserService")
public class UserService {
	@Resource(name = "net.lele.mapper.UserMapper")
	UserMapper userMapper;

	/*
	 * public User findByUserIdService(String userid) throws Exception{
	 *
	 * return userMapper.findByUserId(userid); }
	 */

	public User login(String userid, String password) throws Exception {
		User user = userMapper.findByUserId(userid);
		if(user == null) return null;
		/* String pw = EncryptionUtils.encryptMD5(password); */
		if(user.getPassword().equals(password) == false) return null;
		return user;
	}

    public int InsertUserService(User user) throws Exception{

        return userMapper.InsertUser(user);
    }
}
