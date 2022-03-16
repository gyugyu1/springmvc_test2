package com.junefw.infra.modules.shopping;

import java.util.List;


public interface UserService {
	
	public List<User> selectList(UserVo vo) throws Exception; 
	public int insert(User dto) throws Exception; 
	public User selectOne(UserVo vo) throws Exception; 
	public int update(User dto) throws Exception;
}
