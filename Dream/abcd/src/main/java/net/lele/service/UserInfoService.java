package net.lele.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import net.lele.domain.UserInfo;
import net.lele.repository.UserInfoRepository;

public class UserInfoService {
	@Autowired
	UserInfoRepository userinfoRepository;

	public List<UserInfo> findAll() {
		return userinfoRepository.findAll();
	}
}
