package com.actorfw.infra.modules.xactorpost;

import java.util.List;

public interface ActorPostService {

	public List<ActorPost> actorList(ActorPostVo vo) throws Exception;

	public int selectOneCount(ActorPostVo vo) throws Exception;
	
	
	
}
