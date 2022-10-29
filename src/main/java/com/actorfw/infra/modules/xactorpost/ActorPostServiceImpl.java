package com.actorfw.infra.modules.xactorpost;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ActorPostServiceImpl implements ActorPostService {
	
	@Autowired
	ActorPostDao dao;

	@Override
	public List<ActorPost> actorList(ActorPostVo vo) throws Exception {
		return dao.actorList(vo);
	}
	@Override
    public ActorPost selectOne(ActorPostVo vo) throws Exception {
	        return dao.selectOne(vo);
	    }
    @Override
    public List<ActorPost> snslist(ActorPostVo vo) throws Exception {
        return dao.snslist(vo);
    }
    @Override
    public List<ActorPost> filmolist(ActorPostVo vo) throws Exception {
        return dao.filmolist(vo);
    }
    
    @Override
    public List<ActorPost> edulists(ActorPostVo vo) throws Exception {
        return dao.edulist(vo);
    }
    @Override
    public List<ActorPost> awardlist(ActorPostVo vo) throws Exception {
        return dao.awardlist(vo);
    }
    @Override
    public List<ActorPost> imageSubView(ActorPostVo vo) throws Exception {
        return dao.imageSubView(vo);
    }
    @Override
    public List<ActorPost> actorVideo(ActorPostVo vo) throws Exception {
        return dao.actorVideo(vo);
    }
    @Override
    public int selectOneCount(ActorPostVo vo) throws Exception {
        return dao.selectOneCount(vo);
    }

	

	
	
	
	

}
