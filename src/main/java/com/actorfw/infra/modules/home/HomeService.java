package com.actorfw.infra.modules.home;

import java.util.List;

public interface HomeService {
    
    public List<Home> oditionList(HomeVo vo) throws Exception;
    public List<Home> memberList(HomeVo vo) throws Exception;
    public List<Home> tourList(HomeVo vo) throws Exception;

}