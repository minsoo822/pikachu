package com.actorfw.infra.modules.post;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PostServiceImpl implements PostService {

	@Autowired
	PostDao dao;
	
	@Override
	public List<Post> tourList(PostVo vo) throws Exception {
		return dao.tourList(vo);
	}
	
	@Override
	public List<Post> oditionList(PostVo vo) throws Exception {
		return dao.oditionList(vo);
	}

//	투어정보Inst
	@Override
	public int insrtTour(Post dto) throws Exception {
		return dao.insrtTour(dto);
	}
//	오디션정보Inst
	@Override
	public int insrtOdition(Post dto) throws Exception {
		return dao.insrtOdition(dto);
	}
	
	
}
