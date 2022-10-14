package com.actorfw.infra.modules.xtourpost;

import java.util.List;

import org.springframework.stereotype.Service;

@Service
public interface TourPostService {

	public List<TourPost> tourList(TourPostVo vo) throws Exception;

	
//	투어정보Inst
	public int insrtTour(TourPost dto) throws Exception;
	public TourPost selectOne(TourPostVo vo) throws Exception;
	public int selectOneCount(TourPostVo vo) throws Exception;

}
