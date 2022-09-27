package com.actorfw.infra.modules.code;

import java.util.List;

public interface CodeService {

	public List<Code> selectList(CodeVo vo) throws Exception;
	
	public Code selectOne(CodeVo vo) throws Exception;
	
	public List<Code> addCodeName(CodeVo vo) throws Exception;
	
	public int updateCd(Code dto) throws Exception;
	public int insertCd(Code dto) throws Exception;
	
	
	public void selectListCachedCodeArrayList() throws Exception;
	
		
}
