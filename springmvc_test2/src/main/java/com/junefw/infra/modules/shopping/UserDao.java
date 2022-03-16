package com.junefw.infra.modules.shopping;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.junefw.infra.modules.code.Code;

@Repository
public class UserDao {
	
	@Inject
//	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.junefw.infra.modules.shopping.UserMpp";

	public List<User> selectList(UserVo vo){ 
		return sqlSession.selectList(namespace + ".selectList", vo);
	}

	public int insert(User dto){ 
		return sqlSession.insert(namespace + ".insert", dto);
	}
	
	public User selectOne(UserVo vo){ 
		return sqlSession.selectOne(namespace + ".selectOne", vo);
	}
	
	public int update(User dto) {
		return sqlSession.update(namespace +".update", dto);
		}
}
