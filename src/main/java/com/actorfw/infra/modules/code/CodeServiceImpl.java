package com.actorfw.infra.modules.code;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;

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
	public List<Code> addCodeName(CodeVo vo) throws Exception {	
		
		List<Code> add = dao.addCodeName(vo);
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
		
		int updateCd = dao.updateCd(dto);
		System.out.println("updateCd result" + updateCd);
		return updateCd;
	}
//	@Override
	@PostConstruct
    public void selectListCachedCodeArrayList() throws Exception {
        List<Code> codeListFromDb = (ArrayList<Code>) dao.selectListCachedCodeArrayList();
//      codeListFromDb = (ArrayList<Code>) dao.selectListCachedCodeArrayList();
        Code.cachedCodeArrayList.clear(); 
        Code.cachedCodeArrayList.addAll(codeListFromDb);
        System.out.println("cachedCodeArrayList: " + Code.cachedCodeArrayList.size() + " chached !");
    }
    
    public static List<Code> selectListCachedCode(String ccg_seq) throws Exception {
        
        List<Code> rt = new ArrayList<Code>();
        for(Code codeRow : Code.cachedCodeArrayList) {
            if (codeRow.getCcg_seq().equals(ccg_seq)) {
                rt.add(codeRow);
            } else {
                // by pass
            }
        }
        return rt;
    }
    public static String selectOneCachedCode(String code) throws Exception {
        String rt = "";
        for(Code codeRow : Code.cachedCodeArrayList) {
            if (codeRow.getSeq().equals(code)) {
                rt = codeRow.getName();
            } else {
                // by pass
            }
        }
        return rt;
    }

//	?????????
	@Override
	public int selectOneCount(CodeVo vo) throws Exception {
		return dao.selectOneCount(vo);
	}

    @Override
    public List<Code> categoriGdList(CodeVo vo) throws Exception {
        // TODO Auto-generated method stub
        return dao.categoriGdList(vo);
    }

    @Override
    public List<Code> categoriTyList(CodeVo vo) throws Exception {
        // TODO Auto-generated method stub
        return dao.categoriTyList(vo);
    }
	
	
	
	
	
	
}
