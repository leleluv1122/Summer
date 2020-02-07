package net.lele.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import net.lele.domain.UserInfo;

public interface UserInfoRepository extends JpaRepository<UserInfo, Integer> {

}

