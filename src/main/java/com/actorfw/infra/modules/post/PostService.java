package com.actorfw.infra.modules.post;

import java.util.List;

import org.springframework.stereotype.Service;

@Service
public interface PostService {

	public List<Post> tourList(PostVo vo) throws Exception;
	public List<Post> oditionList(PostVo vo) throws Exception;
	
}
