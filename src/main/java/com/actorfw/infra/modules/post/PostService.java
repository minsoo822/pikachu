package com.actorfw.infra.modules.post;

import java.util.List;

import org.springframework.stereotype.Service;

@Service
public interface PostService {

	public List<Post> tourList(PostVo vo) throws Exception;
	public List<Post> oditionList(PostVo vo) throws Exception;
	
//	투어정보Inst
	public int insrtTour(Post dto) throws Exception;
//	오디션정보Inst
	public int insrtOdition(Post dto) throws Exception;
}
