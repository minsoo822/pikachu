package com.actorfw.infra.modules.member; 


import org.springframework.web.multipart.MultipartFile;

import com.actorfw.infra.common.base.Base;

public class Member extends Base {
	
	
	private String seq;
	private Integer user_type;
	private String id;
	private String password;
	private String name;
	private String dob;
	private Integer gender;
	private String email;
	private Integer email_domain;
	private Integer telecom;
	private String phone_number;
	private Integer director_type;
	private Integer actor_picture;
	private Integer actor_height;
	private Integer actor_weight;
	private Integer actor_eyelid;
	private Integer actor_voice;
	private Integer age;
	private Integer company_useNy;
	private Integer delNy;
	private String creDate;
	private String modDate;
	private Integer adminNy;
	private String actor_specialty;
	private String aboutMe;

//-------------------------------------------------	
//	private MultipartFile[] file0;		// memberForm.profileImage
//	private MultipartFile[] file1;		// memberForm.image
//	private MultipartFile[] file2;		// memberForm.file
	
//	private MultipartFile[] UploadedProfileImage;
//	private MultipartFile[] UploadedImage;
//	private MultipartFile[] UploadedFile;
	

	private MultipartFile[] plofil_image;
	
	
	
//--------------------------------------------------------
	
//	private Integer[] sns_type;
//	private String[] url;
//	private Integer[] member_SnsSeq;
	
//----------------------------------------------------------	
	
//	private String[] filmo_period;
//	private Integer[] filmo_type;
//	private String[] filmo_producer;
//	private String[] filmo_name;
//	private String[] filmo_role;
//	private String[] member_FilmoSeq;

//--------------------------------------------------------
	
	private Integer sns_type;
	private String url;
	private String member_SnsSeq;
    
//----------------------------------------------------------    
    
  private String filmo_period;
  private Integer filmo_type;
  private String filmo_producer;
  private String filmo_name;
  private String filmo_role;
  private String member_FilmoSeq;

//--------------------------------------------------------
  
  private String edu_period;
  private String school_name;
  private String edu_major;
  private Integer edu_type;
  private String member_EduSeq;
  
//----------------------------------------------------------    
  
  private String award_period;
  private String award_name;
  private String award_issuer;
  private String member_AwardSeq;
  
//----------------------------------------------------------    
  
  private String career_period;
  private String career_company_name;
  private String career_position;
  private String member_CareerSeq;
  
//----------------------------------------------------------    
  
  private String company_seq;
  private Integer company_name_type;
  private Integer company_tel;
  private String company_zip_code;
  private String company_address;
  private String company_address_detail;
  private Integer company_Lat;
  private Integer company_Lng;
  private String member_CompanySeq;
  
//----------------------------------------------------------    
  
  private String companyWork_period_s;
  private String companyWork_period_e;
  private Integer companyWork_type;
  private String companyWork_name;
  private Integer company_WorkSeq;
	
//----------------------------------------------------------      
	public String getActor_specialty() {
		return actor_specialty;
	}
	public void setActor_specialty(String actor_specialty) {
		this.actor_specialty = actor_specialty;
	}
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public Integer getUser_type() {
		return user_type;
	}
	public void setUser_type(Integer user_type) {
		this.user_type = user_type;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public Integer getGender() {
		return gender;
	}
	public void setGender(Integer gender) {
		this.gender = gender;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Integer getEmail_domain() {
		return email_domain;
	}
	public void setEmail_domain(Integer email_domain) {
		this.email_domain = email_domain;
	}
	public String getPhone_number() {
		return phone_number;
	}
	public void setPhone_number(String phone_number) {
		this.phone_number = phone_number;
	}
	public Integer getDirector_type() {
		return director_type;
	}
	public void setDirector_type(Integer director_type) {
		this.director_type = director_type;
	}
	public Integer getActor_height() {
		return actor_height;
	}
	public void setActor_height(Integer actor_height) {
		this.actor_height = actor_height;
	}
	public Integer getActor_weight() {
		return actor_weight;
	}
	public void setActor_weight(Integer actor_weight) {
		this.actor_weight = actor_weight;
	}
	public Integer getActor_eyelid() {
		return actor_eyelid;
	}
	public void setActor_eyelid(Integer actor_eyelid) {
		this.actor_eyelid = actor_eyelid;
	}
	public Integer getActor_voice() {
		return actor_voice;
	}
	public void setActor_voice(Integer actor_voice) {
		this.actor_voice = actor_voice;
	}
	public Integer getAge() {
		return age;
	}
	public void setAge(Integer age) {
		this.age = age;
	}
	public Integer getCompany_useNy() {
		return company_useNy;
	}
	public void setCompany_useNy(Integer company_useNy) {
		this.company_useNy = company_useNy;
	}
	public Integer getActor_picture() {
		return actor_picture;
	}
	public void setActor_picture(Integer actor_picture) {
		this.actor_picture = actor_picture;
	}
	public Integer getTelecom() {
		return telecom;
	}
	public void setTelecom(Integer telecom) {
		this.telecom = telecom;
	}
	public Integer getDelNy() {
		return delNy;
	}
	public void setDelNy(Integer delNy) {
		this.delNy = delNy;
	}
	public Integer getAdminNy() {
		return adminNy;
	}
	public void setAdminNy(Integer adminNy) {
		this.adminNy = adminNy;
	}
	public String getCreDate() {
		return creDate;
	}
	public void setCreDate(String creDate) {
		this.creDate = creDate;
	}
	public String getModDate() {
		return modDate;
	}
	public void setModDate(String modDate) {
		this.modDate = modDate;
	}
	public String getAboutMe() {
		return aboutMe;
	}
	public void setAboutMe(String aboutMe) {
		this.aboutMe = aboutMe;
	}
	
	
//----------------------------------------------------
	


	public MultipartFile[] getPlofil_image() {
		return plofil_image;
	}
	public void setPlofil_image(MultipartFile[] plofil_image) {
		this.plofil_image = plofil_image;
	}

//------------------------------------------------------
	
//	public Integer[] getSns_type() {
//        return sns_type;
//    }
//    public void setSns_type(Integer[] sns_type) {
//        this.sns_type = sns_type;
//    }
//    public String[] getUrl() {
//        return url;
//    }
//    public void setUrl(String[] url) {
//        this.url = url;
//    }
//    public Integer[] getMember_SnsSeq() {
//        return member_SnsSeq;
//    }
//    public void setMember_SnsSeq(Integer[] member_SnsSeq) {
//        this.member_SnsSeq = member_SnsSeq;
//    }
//
////------------------------------------------------------
//    
//    public String[] getFilmo_period() {
//        return filmo_period;
//    }
//    public void setFilmo_period(String[] filmo_period) {
//        this.filmo_period = filmo_period;
//    }
//    public Integer[] getFilmo_type() {
//        return filmo_type;
//    }
//    public void setFilmo_type(Integer[] filmo_type) {
//        this.filmo_type = filmo_type;
//    }
//    public String[] getFilmo_producer() {
//        return filmo_producer;
//    }
//    public void setFilmo_producer(String[] filmo_producer) {
//        this.filmo_producer = filmo_producer;
//    }
//    public String[] getFilmo_name() {
//        return filmo_name;
//    }
//    public void setFilmo_name(String[] filmo_name) {
//        this.filmo_name = filmo_name;
//    }
//    public String[] getFilmo_role() {
//        return filmo_role;
//    }
//    public void setFilmo_role(String[] filmo_role) {
//        this.filmo_role = filmo_role;
//    }
//    public String[] getMember_FilmoSeq() {
//        return member_FilmoSeq;
//    }
//    public void setMember_FilmoSeq(String[] member_FilmoSeq) {
//        this.member_FilmoSeq = member_FilmoSeq;
//    }
//    
//    
//------------------------------------------------------
	
    public Integer getSns_type() {
        return sns_type;
    }
    public void setSns_type(Integer sns_type) {
        this.sns_type = sns_type;
    }
    public String getUrl() {
        return url;
    }
    public void setUrl(String url) {
        this.url = url;
    }
    public String getMember_SnsSeq() {
        return member_SnsSeq;
    }
    public void setMember_SnsSeq(String member_SnsSeq) {
        this.member_SnsSeq = member_SnsSeq;
    }
    public String getFilmo_period() {
        return filmo_period;
    }
    public void setFilmo_period(String filmo_period) {
        this.filmo_period = filmo_period;
    }
    public Integer getFilmo_type() {
        return filmo_type;
    }
    public void setFilmo_type(Integer filmo_type) {
        this.filmo_type = filmo_type;
    }
    public String getFilmo_producer() {
        return filmo_producer;
    }
    public void setFilmo_producer(String filmo_producer) {
        this.filmo_producer = filmo_producer;
    }
    public String getFilmo_name() {
        return filmo_name;
    }
    public void setFilmo_name(String filmo_name) {
        this.filmo_name = filmo_name;
    }
    public String getFilmo_role() {
        return filmo_role;
    }
    public void setFilmo_role(String filmo_role) {
        this.filmo_role = filmo_role;
    }
    public String getMember_FilmoSeq() {
        return member_FilmoSeq;
    }
    public void setMember_FilmoSeq(String member_FilmoSeq) {
        this.member_FilmoSeq = member_FilmoSeq;
    }
    public String getEdu_period() {
        return edu_period;
    }
    public void setEdu_period(String edu_period) {
        this.edu_period = edu_period;
    }
    public String getShcool_name() {
        return school_name;
    }
    public void setShcool_name(String shcool_name) {
        this.school_name = shcool_name;
    }
    public String getEdu_major() {
        return edu_major;
    }
    public void setEdu_major(String edu_major) {
        this.edu_major = edu_major;
    }
    public Integer getEdu_type() {
        return edu_type;
    }
    public void setEdu_type(Integer edu_type) {
        this.edu_type = edu_type;
    }
    public String getMember_EduSeq() {
        return member_EduSeq;
    }
    public void setMember_EduSeq(String member_EduSeq) {
        this.member_EduSeq = member_EduSeq;
    }
    public String getAward_period() {
        return award_period;
    }
    public void setAward_period(String award_period) {
        this.award_period = award_period;
    }
    public String getAward_name() {
        return award_name;
    }
    public void setAward_name(String award_name) {
        this.award_name = award_name;
    }
    public String getAward_issuer() {
        return award_issuer;
    }
    public void setAward_issuer(String award_issuer) {
        this.award_issuer = award_issuer;
    }
    public String getMember_AwardSeq() {
        return member_AwardSeq;
    }
    public void setMember_AwardSeq(String member_AwardSeq) {
        this.member_AwardSeq = member_AwardSeq;
    }
    public String getCareer_period() {
        return career_period;
    }
    public void setCareer_period(String career_period) {
        this.career_period = career_period;
    }
    public String getCareer_company_name() {
        return career_company_name;
    }
    public void setCareer_company_name(String career_company_name) {
        this.career_company_name = career_company_name;
    }
    public String getCareer_position() {
        return career_position;
    }
    public void setCareer_position(String career_position) {
        this.career_position = career_position;
    }
    public String getMember_CareerSeq() {
        return member_CareerSeq;
    }
    public void setMember_CareerSeq(String member_CareerSeq) {
        this.member_CareerSeq = member_CareerSeq;
    }
    public String getSchool_name() {
        return school_name;
    }
    public void setSchool_name(String school_name) {
        this.school_name = school_name;
    }
    public Integer getCompany_name_type() {
        return company_name_type;
    }
    public void setCompany_name_type(Integer company_name_type) {
        this.company_name_type = company_name_type;
    }
    public Integer getCompany_tel() {
        return company_tel;
    }
    public void setCompany_tel(Integer company_tel) {
        this.company_tel = company_tel;
    }
    public String getCompany_zip_code() {
        return company_zip_code;
    }
    public void setCompany_zip_code(String company_zip_code) {
        this.company_zip_code = company_zip_code;
    }
    public String getCompany_address() {
        return company_address;
    }
    public void setCompany_address(String company_address) {
        this.company_address = company_address;
    }
    public String getCompany_address_deatil() {
        return company_address_detail;
    }
    public void setCompany_address_deatil(String company_address_deatil) {
        this.company_address_detail = company_address_deatil;
    }
    public Integer getCompany_Lat() {
        return company_Lat;
    }
    public void setCompany_Lat(Integer company_Lat) {
        this.company_Lat = company_Lat;
    }
    public Integer getCompany_Lng() {
        return company_Lng;
    }
    public void setCompany_Lng(Integer company_Lng) {
        this.company_Lng = company_Lng;
    }
    public String getMember_CompanySeq() {
        return member_CompanySeq;
    }
    public void setMember_CompanySeq(String member_CompanySeq) {
        this.member_CompanySeq = member_CompanySeq;
    }
    public String getCompanyWork_period_s() {
        return companyWork_period_s;
    }
    public void setCompanyWork_period_s(String companyWork_period_s) {
        this.companyWork_period_s = companyWork_period_s;
    }
    public String getCompanyWork_period_e() {
        return companyWork_period_e;
    }
    public void setCompanyWork_period_e(String companyWork_period_e) {
        this.companyWork_period_e = companyWork_period_e;
    }
    public Integer getCompanyWork_type() {
        return companyWork_type;
    }
    public void setCompanyWork_type(Integer companyWork_type) {
        this.companyWork_type = companyWork_type;
    }
    public String getCompanyWork_name() {
        return companyWork_name;
    }
    public void setCompanyWork_name(String companyWork_name) {
        this.companyWork_name = companyWork_name;
    }
    public Integer getCompany_WorkSeq() {
        return company_WorkSeq;
    }
    public void setCompany_WorkSeq(Integer company_WorkSeq) {
        this.company_WorkSeq = company_WorkSeq;
    }
    public String getCompany_seq() {
        return company_seq;
    }
    public void setCompany_seq(String company_seq) {
        this.company_seq = company_seq;
    }
    
	
	

}
