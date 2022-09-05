package com.actorfw.infra.modules.codegroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CodeGroupServiceImpl implements CodeGroupService {

	@Autowired
	CodeGroupDao dao;

//	public List<CodeGroup> selectList(CodeGroupVo vo) throw Expetion {
//		return dao.searchList(vo);
//	}
	
	@Override
	public List<CodeGroup> selectList(CodeGroupVo vo) throws Exception {
		
		List<CodeGroup> list = dao.selectList(vo);
		return list;
	}

	@Override
	public List<CodeGroup> searchList(CodeGroupVo vo) throws Exception {
		
		return dao.searchList(vo);
	}
	
	
	
	
	
	
	
}
