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

//	@Override
//	public List<ActorPost> imageViwe(ActorPost dto) throws Exception {
//		
//		return dao.imageViwe(dto);
//	}

	
	
	
	

}
