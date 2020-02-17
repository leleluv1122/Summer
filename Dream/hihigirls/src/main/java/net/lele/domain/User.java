package net.lele.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class User {
	private int id;
    private String userid;
    private String password;
    private String name;
    private String address;
    private String address_detail;
    private String phone;
    private String userType;
}
