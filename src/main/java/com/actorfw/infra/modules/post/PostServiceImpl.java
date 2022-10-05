package com.actorfw.infra.modules.post;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PostServiceImpl implements PostService {

	@Autowired
	PostDao dao;
	
	public List<Post> tourList(PostVo vo) throws Exception {
		return dao.tourList(vo);
	}
	
	public List<Post> oditionList(PostVo vo) throws Exception {
		return dao.oditionList(vo);
	}
	
}
