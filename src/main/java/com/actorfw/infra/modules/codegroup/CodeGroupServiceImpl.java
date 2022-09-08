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
	public int insert(CodeGroup dto) throws Exception {
		int result =  dao.insert(dto);
		System.out.println("service result" + result);
		return result;
	}

	@Override
	public CodeGroup selectOne(CodeGroupVo vo) throws Exception {
		
		CodeGroup result = dao.selectOne(vo);
		System.out.println("service result" + result);
		return result;
	}
	
	
	
	/*
	 * @Override 
	 * public List<CodeGroup> searchList(CodeGroupVo vo) throws Exception
	 * {
	 * 
	 * return dao.searchList(vo); }
	 */
	
	
	
	
	
}
