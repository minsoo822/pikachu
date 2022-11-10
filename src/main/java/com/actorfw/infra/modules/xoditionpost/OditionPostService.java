package com.actorfw.infra.modules.xoditionpost;

import java.util.List;

public interface OditionPostService {

	public List<OditionPost> oditionList(OditionPostVo vo) throws Exception;
	
	
	//오디션정보Inst
	public int insrtOdition(OditionPost dto) throws Exception;
	public OditionPost oditionView(OditionPostVo vo) throws Exception;
	
	public int selectOneCount(OditionPostVo vo)  throws Exception;
	
	public OditionPost comentOne(OditionPost dto) throws Exception;
	
    /* 댓글 */
	public List<OditionPost> postComentList(OditionPostVo vo) throws Exception;
	public int insertComnt(OditionPost dto) throws Exception;
//	public int postComentCount(OditionPostVo vo)  throws Exception;
}
