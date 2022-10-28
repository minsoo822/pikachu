package com.actorfw.infra.modules.xactorpost;

import java.util.List;

public interface ActorPostService {

	public List<ActorPost> actorList(ActorPostVo vo) throws Exception;
	public ActorPost selectOne(ActorPostVo vo) throws Exception;
	public List<ActorPost> snslist(ActorPostVo vo) throws Exception;
	
	

	public int selectOneCount(ActorPostVo vo) throws Exception;
	
	
	
}
