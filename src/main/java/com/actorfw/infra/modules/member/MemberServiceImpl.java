package com.actorfw.infra.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.actorfw.infra.common.util.UtilSecurity;
import com.actorfw.infra.common.util.UtilUpload;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberDao dao;

//-------------------------------------------------------------------
//	멤버리스트
	@Override
	public List<Member> selectList(MemberVo vo) throws Exception { return dao.selectList(vo); }
//	리스트
	@Override
    public List<Member> listFromCategory(int a) throws Exception {
        return dao.listFromCategory(a);
    }

	//  마이페이지 리스트에 올것듯 ------------------------------------------------	
//	sns정보
	@Override
    public List<Member> selectSnsList(MemberVo vo) throws Exception { return dao.selectSnsList(vo); }
//	filmo정보
	@Override
    public List<Member> selectFilmoList(MemberVo vo) throws Exception { return dao.selectFilmoList(vo); }
//  edu정보
	@Override
    public List<Member> selectEduList(MemberVo vo) throws Exception { return dao.selectEduList(vo); }
//  award정보
	@Override
    public List<Member> selectAwardList(MemberVo vo) throws Exception { return dao.selectAwardList(vo); }
//-------------------------------------------------------------------

	@Override
	public Member selectOne(MemberVo vo) throws Exception  { return dao.selectOne(vo); }

    
    
    
//--------------------------------------------------------------------------------------------------	
//	카카오 인서트
	@Override
    public int kakaoInst(Member dto) throws Exception {
        return dao.kakaoInst(dto);
    }
//  네이버 인서트
	@Override
    public int naverInst(Member dto) throws Exception {
        return dao.naverInst(dto);
    }
    //	멤버인서트
	@Override
	public int insertCd(Member dto) throws Exception {
		dto.setPassword(UtilSecurity.encryptSha256(dto.getPassword()));
		int insertCd =  dao.insertCd(dto);
        int pseq = dao.selectLastSeq();

        int j = 0;
        for(MultipartFile myFile : dto.getPlofil_image()) {

            if(!myFile.isEmpty()) {
                // postServiceImpl
                String pathModule = this.getClass().getSimpleName().toString().toLowerCase().replace("serviceimpl", "");
                
//                		MemberServiceImpl.java  ->	 MemberServiceImpl -> ""  ->	 memberserviceimpl -> 	member
                UtilUpload.uploadPost(myFile, pathModule, dto);
                    
                if(myFile.getOriginalFilename().toUpperCase().contains(".MP4") == true ) {
                    dto.setType(3);
                } else {
                    dto.setType(2);
                }
                dto.setDefaultNy(j == 0 ? 1 : 0);
                dto.setSort(j+1);
                dto.setPseq(pseq);

                dao.insertMemberUpload(dto);
                j++;
            }
        }
        for(MultipartFile myFile : dto.getVideo()) {

            if(!myFile.isEmpty()) {
                // postServiceImpl
                String pathModule = this.getClass().getSimpleName().toString().toLowerCase().replace("serviceimpl", "");
                
//                      MemberServiceImpl.java  ->   MemberServiceImpl -> ""  ->     memberserviceimpl ->   member
                UtilUpload.uploadPost(myFile, pathModule, dto);
                    
                dto.setType(3);
                dto.setDefaultNy(0);
                dto.setSort(j+1);
                dto.setPseq(pseq);

                dao.insertMemberUpload(dto);
                j++;
            }
        }
		return insertCd;
	}

    //  배우sns인서트
    @Override
    public int insertSnsCd(Member dto) throws Exception {
        return dao.insertSnsCd(dto);
    }
//  배우filmo인서트
    @Override
    public int insertFilmoCd(Member dto) throws Exception {
        return dao.insertFilmoCd(dto);
    }
//  배우edu인서트
    @Override
    public int insertEduCd(Member dto) throws Exception {
        return dao.insertEduCd(dto);
    }
//  배우award인서트    
    @Override
    public int insertAwardCd(Member dto) throws Exception {
        return dao.insertAwardCd(dto);
    }
//  배우career인서트   
    @Override
    public int insertCareerCd(Member dto) throws Exception {
        return dao.insertCareerCd(dto);
    }
//----------------------------------------------------------------감독상세   
//  감독company인서트 
    @Override
    public int insertCompanyCd(Member dto) throws Exception {
        return dao.insertCompanyCd(dto);
    }
//  감독companywork인서트 
    @Override
    public int insertCompanyWorkCd(Member dto) throws Exception {
//      int company_WorkSeq = dao.selectLastcompanySeq();
//      dto.setCompany_WorkSeq(company_WorkSeq);
        return dao.insertCompanyWorkCd(dto);
    }
    
    
    
//-----------------------------------------------------------------------------------------------    
    
    
    //	멤버업데이트
	@Override
	public int updateCd(Member dto) throws Exception { 
		int updateCd = dao.updateCd(dto);
  
        int j = 0;
        
        for(MultipartFile myFile : dto.getPlofil_image()) {

            if(!myFile.isEmpty()) {
                // postServiceImpl
                String pathModule = this.getClass().getSimpleName().toString().toLowerCase().replace("serviceimpl", "");
                
//                      MemberServiceImpl.java  ->   MemberServiceImpl -> ""  ->     memberserviceimpl ->   member
                 
                UtilUpload.uploadPost(myFile, pathModule, dto);

                dto.setType(2);
                dto.setDefaultNy(1);
                dto.setSort(j+1);
                dto.setPseq(Integer.parseInt(dto.getSeq()));

                dao.updateUploaded(dto);
                j++;
            }
        }
//        for(MultipartFile myFile : dto.getSub_image()) {
//
//            if(!myFile.isEmpty()) {
//                // postServiceImpl
//                String pathModule = this.getClass().getSimpleName().toString().toLowerCase().replace("serviceimpl", "");
//                
////                      MemberServiceImpl.java  ->   MemberServiceImpl -> ""  ->     memberserviceimpl ->   member
//                 
//                UtilUpload.uploadPost(myFile, pathModule, dto);
//
//                dto.setType(2);
//                dto.setDefaultNy(0);
//                dto.setSort(j+1);
//                dto.setPseq(Integer.parseInt(dto.getSeq()));
//
//                dao.updateUploaded(dto);
//                j++;
//            }
//        }
//        for(MultipartFile myFile : dto.getVideo()) {
//
//            if(!myFile.isEmpty()) {
//                // postServiceImpl
//                String pathModule = this.getClass().getSimpleName().toString().toLowerCase().replace("serviceimpl", "");
//                
////                      MemberServiceImpl.java  ->   MemberServiceImpl -> ""  ->     memberserviceimpl ->   member
//                 
//                UtilUpload.uploadPost(myFile, pathModule, dto);
//
//                dto.setType(3);
//                dto.setDefaultNy(0);
//                dto.setSort(j+1);
//                dto.setPseq(Integer.parseInt(dto.getSeq()));
//
//                dao.updateUploaded(dto);
//                j++;
//            }
//        }
		return updateCd; 
	}
	
	@Override
    public int updateSnsCd(Member dto) throws Exception {
        return dao.updateSnsCd(dto);
    }
    @Override
    public int updateFilmoCd(Member dto) throws Exception {
        return dao.updateFilmoCd(dto);
    }
    @Override
    public int updateEduCd(Member dto) throws Exception {
        return dao.updateEduCd(dto);
    }
    @Override
    public int updateAwardCd(Member dto) throws Exception {
        return dao.updateAwardCd(dto);
    }
    //---------------------------------------------------------------------------------------	
//  메인프로필사진 불러오기
	@Override
	public Member imageMainView(Member dto) throws Exception {
		return dao.imageMainView(dto);
	}
//  서브프로필사진 불러오기
	@Override
    public List<Member> imageSubView(Member dto) throws Exception {
        return dao.imageSubView(dto);
    }
//	연기영상 불러오기
    @Override
    public List<Member> actorVideo(Member dto) throws Exception {
        // TODO Auto-generated method stub
        return dao.actorVideo(dto);
    }
    //	아이디 중복체크
	@Override
	public int idCheck(Member dto) throws Exception  { 
	    return dao.idCheck(dto);}
	
//	로그인
	@Override
	public Member logInCd(Member dto) throws Exception  { 
        dto.setPassword(UtilSecurity.encryptSha256(dto.getPassword()));
	    return dao.logInCd(dto); 
	    }
	@Override
    public Member snsLogincheck(Member dto) throws Exception {
        return dao.snsLogincheck(dto);
    }
    //	페이징
	@Override
	public int selectOneCount(MemberVo vo) throws Exception { return dao.selectOneCount(vo);
	}
    @Override
    public List<Member> supportList(MemberVo vo) throws Exception {
        // TODO Auto-generated method stub
        return dao.supportList(vo);
    }
    
	
//---------------------------------------------------------------------------------
	
	
	
	
	
	
}
