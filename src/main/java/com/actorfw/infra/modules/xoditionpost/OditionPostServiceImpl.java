package com.actorfw.infra.modules.xoditionpost;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OditionPostServiceImpl implements OditionPostService {
	
	@Autowired
	OditionPostDao dao;

	@Override
	public List<OditionPost> oditionList(OditionPostVo vo) throws Exception {
		return dao.oditionList(vo);
	}

	@Override
	public int insrtOdition(OditionPost dto) throws Exception {
		return dao.insrtOdition(dto);
	}

	
	
	

}
