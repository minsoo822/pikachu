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
    public OditionPost oditionView(OditionPostVo vo) throws Exception {
        return dao.oditionView(vo);
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


	
    /* 댓글 */
    @Override
    public List<OditionPost> postComentList(OditionPostVo vo) throws Exception {
        return dao.postComentList(vo);
    }
    @Override
    public int insertComnt(OditionPost dto) throws Exception {
        return dao.insertComnt(dto);
    }

    @Override
    public OditionPost comentOne(OditionPost dto) throws Exception {
        return dao.comentOne(dto);
    }

    @Override
    public int oditionSupportInst(OditionPost dto) throws Exception {
        // TODO Auto-generated method stub
        return dao.oditionSupportInst(dto);
    }

    @Override
    public int oditionSupportDel(OditionPost dto) throws Exception {
        // TODO Auto-generated method stub
        return dao.oditionSupportDel(dto);
    }

    @Override
    public int supportCount(OditionPost dto) throws Exception {
        // TODO Auto-generated method stub
        return dao.supportCount(dto);
    }

//    @Override
//    public int postComentCount(OditionPostVo vo) throws Exception {
//        return dao.postComentCount(vo);
//    }
	

}
