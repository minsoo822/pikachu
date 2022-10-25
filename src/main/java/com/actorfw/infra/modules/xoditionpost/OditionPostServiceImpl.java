package com.actorfw.infra.modules.xoditionpost;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.actorfw.infra.common.util.UtilUpload;

@Service
public class OditionPostServiceImpl implements OditionPostService {
	
	@Autowired
	OditionPostDao dao;

	@Override
	public List<OditionPost> oditionList(OditionPostVo vo) throws Exception {
		return dao.oditionList(vo);
	}

	@Override
	public int insrtOdition(OditionPost dto) throws Exception {
		int insrtOdition = dao.insrtOdition(dto);
	    int pseq = dao.selectLastSeq();
	    
	    int j = 0;
        for(MultipartFile myFile : dto.getPost_image()) {

            if(!myFile.isEmpty()) {
                // postServiceImpl
                String pathModule = this.getClass().getSimpleName().toString().toLowerCase().replace("serviceimpl", "");
                
//                      MemberServiceImpl.java  ->   MemberServiceImpl -> ""  ->     memberserviceimpl ->   member
                 
                UtilUpload.PuploadPost(myFile, pathModule, dto);

                dto.setType(2);
                dto.setDefaultNy(j == 0 ? 1 : 0);
                dto.setSort(j+1);
                dto.setPseq(pseq);

                dao.insertOditionUpload(dto);
                j++;
            }
        }
	    return insrtOdition;
	}

    @Override
    public int selectOneCount(OditionPostVo vo) throws Exception {
        return dao.selectOneCount(vo);
    }

	
	
	

}
