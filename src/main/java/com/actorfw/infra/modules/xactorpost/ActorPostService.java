package com.actorfw.infra.modules.xactorpost;

import java.util.List;

public interface ActorPostService {

	public List<ActorPost> actorList(ActorPostVo vo) throws Exception;

	
	public List<ActorPost> imageViwe(ActorPost dto) throws Exception;
	
	
	
}
