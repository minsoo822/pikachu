package com.actorfw.infra.modules.xactorpost;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ActorPostServiceImpl implements ActorPostService {

	@Autowired
	ActorPostDao dao;
	
	
}
