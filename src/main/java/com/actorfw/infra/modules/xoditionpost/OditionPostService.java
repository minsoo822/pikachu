package com.actorfw.infra.modules.xoditionpost;

import java.util.List;

import org.springframework.stereotype.Service;


@Service
public interface OditionPostService {

	public List<OditionPost> oditionList(OditionPostVo vo) throws Exception;
	
	
	//오디션정보Inst
	public int insrtOdition(OditionPost dto) throws Exception;
	
}
