package com.actorfw.infra.modules.home;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class HomeDao {
    
    @Inject
    @Resource(name = "sqlSession")
    private SqlSession sqlSession;
    
    public static String namespace = "com.actorfw.infra.modules.home.HomeMapper";
    
    public List<Home> oditionList(HomeVo vo) { return sqlSession.selectList(namespace + ".oditionList", vo); }
    public List<Home> memberList(HomeVo vo) { return sqlSession.selectList(namespace + ".memberList", vo); }
    public List<Home> tourList(HomeVo vo) { return sqlSession.selectList(namespace + ".tourList", vo); }
    
    //count
    public int memberCount(HomeVo vo) {
        return sqlSession.selectOne(namespace + ".memberCount", vo);
    }
    public int postCount(HomeVo vo) {
        return sqlSession.selectOne(namespace + ".postCount", vo);
    }
    
}
