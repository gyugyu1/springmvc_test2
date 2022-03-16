package com.junefw.infra.modules.shopping;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.junefw.infra.modules.code.CodeVo;

@Service
public class UserServiceImpl implements UserService{

	@Autowired
	UserDao dao;
	
	@Override
	public List<User> selectList(UserVo vo) throws Exception {
		return dao.selectList(vo); 
	}
	@Override
	public int insert(User dto) throws Exception {
		return dao.insert(dto);
	}
	@Override
	public User selectOne(UserVo vo) throws Exception {
		return dao.selectOne(vo);
	}
	@Override
	public int update(User dto) throws Exception {
		return dao.update(dto);
		
	}
	
}
