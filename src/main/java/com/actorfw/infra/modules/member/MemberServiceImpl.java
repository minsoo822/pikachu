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
//	배우리스트
	@Override
	public List<Member> actorList(MemberVo vo) throws Exception { return dao.actorList(vo); }
//	감독리스트
	@Override
	public List<Member> directorList(MemberVo vo) throws Exception { return dao.directorList(vo); }

	//  마이페이지 리스트에 올것듯 ------------------------------------------------	
//	sns정보
	@Override
    public List<Member> selectSnsList(MemberVo vo) throws Exception { return dao.selectSnsList(vo); }
	
	
//-------------------------------------------------------------------

	@Override
	public Member selectOne(MemberVo vo) throws Exception  { return dao.selectOne(vo); }

    //--------------------------------------------------------------------------------------------------	
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

                dto.setType(2);
                dto.setDefaultNy(j == 0 ? 1 : 0);
                dto.setSort(j+1);
                dto.setPseq(pseq);

                dao.insertMemberUpload(dto);
                j++;
            }
        }
		return insertCd;
	}
//------------------------------------------------------------ 배우상세	
// 멤버sns인서트
    @Override
    public int insertSnsCd(Member dto) throws Exception {
      dto.setMember_SnsSeq(dto.getSeq());
        return dao.insertSnsCd(dto);
    }
 // 멤버filmo인서트
    @Override
    public int insertFilmoCd(Member dto) throws Exception {
        dto.setMember_FilmoSeq(dto.getSeq());
        return dao.insertFilmoCd(dto);
    }
    
    @Override
    public int insertEduCd(Member dto) throws Exception {
        dto.setMember_EduSeq(dto.getSeq());
        return dao.insertEduCd(dto);
    }
    
    @Override
    public int insertAwardCd(Member dto) throws Exception {
        dto.setMember_AwardSeq(dto.getSeq());
        return dao.insertAwardCd(dto);
    }
    
    @Override
    public int insertCareerCd(Member dto) throws Exception {
        dto.setMember_CareerSeq(dto.getSeq());
        return dao.insertCareerCd(dto);
    }
//----------------------------------------------------------------감독상세   
    
    @Override
    public int insertCompanyCd(Member dto) throws Exception {
        dto.setMember_CompanySeq(dto.getSeq());
        return dao.insertCompanyCd(dto);
    }
    @Override
    public int insertCompanyWorkCd(Member dto) throws Exception {
        int company_WorkSeq = dao.selectLastcompanySeq();
        dto.setCompany_WorkSeq(company_WorkSeq);
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
                dto.setDefaultNy(j == 0 ? 1 : 0);
                dto.setSort(j+1);
                dto.setPseq(Integer.parseInt(dto.getSeq()));

                dao.insertMemberUpload(dto);
                j++;
            }
        }
		return updateCd; 
	}
//  프로필사진 미리보기
	@Override
	public Member imageView(Member dto) throws Exception {
		return dao.imageView(dto);
	}
	
//	아이디 중복체크
	@Override
	public int idCheck(Member dto) throws Exception  { return dao.idCheck(dto);}
	
//	로그인
	@Override
	public Member logInCd(Member dto) throws Exception  { return dao.logInCd(dto); }
//	페이징
	@Override
	public int selectOneCount(MemberVo vo) throws Exception { return dao.selectOneCount(vo);
	}
	
	
}
