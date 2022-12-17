package com.actorfw.infra.modules.home;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class HomeServiceImpl implements HomeService {

    @Autowired
    HomeDao  dao;
    
    @Override
    public List<Home> oditionList(HomeVo vo) throws Exception { return dao.oditionList(vo); }
    @Override
    public List<Home> memberList(HomeVo vo) throws Exception { return dao.memberList(vo); }
    @Override
    public List<Home> tourList(HomeVo vo) throws Exception { 
        System.out.println("투어리스트1");
        return dao.tourList(vo); 
    }
    @Override
    public int memberCount(HomeVo vo) throws Exception {
        // TODO Auto-generated method stub
        return dao.memberCount(vo);
    }
    @Override
    public int postCount(HomeVo vo) throws Exception {
        // TODO Auto-generated method stub
        return dao.postCount(vo);
    }
    
    
    
    
    

}
