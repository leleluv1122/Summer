package net.lele.dto;

public class People {

    String id;
    String password;
    String name;
    String birthday;
    String sex;
    String phone;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getPassword() {
    	return password;
    }
    public void setPassword(String password) {
    	this.password = password;
    }

    public String getName() {
    	return name;
    }
    public void setName(String name) {
    	this.name = name;
    }

    public String getBirthday() {
    	return birthday;
    }
    public void setBirthday(String birthday) {
    	this.birthday = birthday;
    }

    public String getSex() {
    	return sex;
    }
    public void setSex(String sex) {
    	this.sex = sex;
    }

    public String getPhone() {
    	return phone;
    }
    public void setPhone(String phone) {
    	this.phone = phone;
    }
}