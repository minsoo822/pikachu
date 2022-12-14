package com.actorfw.infra.modules.home;

import java.util.List;

public interface HomeService {
    
    public List<Home> oditionList(HomeVo vo) throws Exception;
    public List<Home> memberList(HomeVo vo) throws Exception;
    public List<Home> tourList(HomeVo vo) throws Exception;

    public int memberCount(HomeVo vo) throws Exception;
    public int manCount() throws Exception;
    public int womanCount() throws Exception;
    
    public int postCount(HomeVo vo) throws Exception;
    public int movieCount() throws Exception;
    public int shortCount() throws Exception;
    public int dramaCount() throws Exception;
    public int wepCount() throws Exception;
    public int cfCount() throws Exception;
    public int viCount() throws Exception;
}