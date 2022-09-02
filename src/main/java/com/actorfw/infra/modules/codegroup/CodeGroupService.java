package com.actorfw.infra.modules.codegroup;

import java.util.List;

public interface CodeGroupService {

	public List<CodeGroup> selectList(CodeGroupVo vo) throws Exception; 
	
	public List<CodeGroup> searchList(CodeGroupVo vo) throws Exception; 
	
}
