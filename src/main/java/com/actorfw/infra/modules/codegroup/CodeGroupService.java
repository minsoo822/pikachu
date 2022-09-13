package com.actorfw.infra.modules.codegroup;

import java.util.List;

public interface CodeGroupService {

	public List<CodeGroup> selectList(CodeGroupVo vo) throws Exception; 
	
	public int insert(CodeGroup dto) throws Exception;
	
	public CodeGroup selectOne(CodeGroupVo vo) throws Exception;
	
	public int update1(CodeGroup dto) throws Exception;
	
	public int uelete(CodeGroup dto) throws Exception;
	
	public int delete(CodeGroupVo vo) throws Exception;
	
	
//	 public List<CodeGroup> searchList(CodeGroupVo vo) throws Exception; 
}
