package com.actorfw.infra.modules.xactorpost;

import java.util.List;

public interface ActorPostService {

	public List<ActorPost> actorList(ActorPostVo vo) throws Exception;
	public ActorPost selectOne(ActorPostVo vo) throws Exception;
	
	public List<ActorPost> snslist(ActorPostVo vo) throws Exception;
	public List<ActorPost> filmolist(ActorPostVo vo) throws Exception;
	public List<ActorPost> edulists(ActorPostVo vo) throws Exception;
    public List<ActorPost> awardlist(ActorPostVo vo) throws Exception;
    public List<ActorPost> imageSubView(ActorPostVo vo) throws Exception;
    public List<ActorPost> actorVideo(ActorPostVo vo) throws Exception;

	public int selectOneCount(ActorPostVo vo) throws Exception;
	
	
	
}
