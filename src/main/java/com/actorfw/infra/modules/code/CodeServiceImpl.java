package com.actorfw.infra.modules.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CodeServiceImpl implements CodeService {

	@Autowired
	CodeDao dao;

	@Override
	public List<Code> selectList(CodeVo vo) throws Exception {
		
		List<Code> list = dao.selectList(vo);
		
		return list;
	}

	@Override
	public Code selectOne(CodeVo vo) throws Exception {
		
		Code result = dao.selectOne(vo);
		return result;
	}

	@Override
	public List<Code> addCodeName() throws Exception {	
		
		List<Code> add = dao.addCodeName();
		return add;
	}

	@Override
	public int insertCd(Code dto) throws Exception {
		
		int insertCd = dao.insertCd(dto);
		System.out.println("insertCd result" + insertCd);
		return insertCd;
	}

	@Override
	public int updateCd(Code dto) throws Exception {
		
		int updateCd = dao.insertCd(dto);
		System.out.println("updateCd result" + updateCd);
		return updateCd;
	}

	
	
	
	
}
