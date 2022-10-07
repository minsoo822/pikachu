package com.actorfw.infra.modules.xtourpost;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TourPostServiceImpl implements TourPostService {

	@Autowired
	TourPostDao dao;
	
	@Override
	public List<TourPost> tourList(TourPostVo vo) throws Exception {
		return dao.tourList(vo);
	}
	

//	투어정보Inst
	@Override
	public int insrtTour(TourPost dto) throws Exception {
		return dao.insrtTour(dto);
	}

	
}
