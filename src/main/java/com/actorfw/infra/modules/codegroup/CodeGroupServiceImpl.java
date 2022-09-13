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
//	데이터 삽입
	@Override
	public int insert(CodeGroup dto) throws Exception {
		int result =  dao.insert(dto);
		System.out.println("service result" + result);
		return result;
	}
//	한개의 데이터만 가지고올때
	@Override
	public CodeGroup selectOne(CodeGroupVo vo) throws Exception {
		
		CodeGroup result = dao.selectOne(vo);
		System.out.println("service result" + result);
		return result;
	}
//	데이터 수정
	@Override
	public int update1(CodeGroup dto) throws Exception {
		System.out.println("dgfd");
		return dao.update1(dto);
	}
//	데이터 가삭제
	@Override
	public int uelete(CodeGroup dto) throws Exception {
//		 setRegMod(dto);
		return dao.uelete(dto);
	}
//	데이터 삭제
	@Override
	public int delete(CodeGroupVo vo) throws Exception {
		
		return dao.delete(vo);
	}
	
	
	
	/*
	 * @Override 
	 * public List<CodeGroup> searchList(CodeGroupVo vo) throws Exception
	 * {
	 * 
	 * return dao.searchList(vo); }
	 */
	
	
	
	
	
}
