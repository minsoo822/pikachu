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
    public int manCount() throws Exception {
        // TODO Auto-generated method stub
        return dao.manCount();
    }
    @Override
    public int womanCount() throws Exception {
        // TODO Auto-generated method stub
        return dao.womanCount();
    }
    @Override
    public int postCount(HomeVo vo) throws Exception {
        // TODO Auto-generated method stub
        return dao.postCount(vo);
    }
    @Override
    public int movieCount() throws Exception {
        return dao.movieCount();
    }
    @Override
    public int shortCount() throws Exception {
        return dao.shortCount();
    }
    @Override
    public int dramaCount() throws Exception {
        return dao.dramaCount();
    }
    @Override
    public int wepCount() throws Exception {
        return dao.wepCount();
    }
    @Override
    public int cfCount() throws Exception {
        return dao.cfCount();
    }
    @Override
    public int viCount() throws Exception {
        return dao.viCount();
    }
    
    
    
    
    

}
