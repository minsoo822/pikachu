package com.actorfw.infra.modules.member; 


import org.springframework.web.multipart.MultipartFile;

import com.actorfw.infra.common.base.Base;

public class Member extends Base {
	
	
	private String seq;
	private String member_seq;
	private String fileSeq;
	private String ifspSeq;
	private String odition_seq;
	private String mm_seq;
	
	private String issuer;
	
	
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
	
	private String period;
	private String period_s;
	private String period_e;
	private String role;
	private String producer;
	private String major;

//-------------------------------------------------	
//	private MultipartFile[] file0;		// memberForm.profileImage
//	private MultipartFile[] file1;		// memberForm.image
//	private MultipartFile[] file2;		// memberForm.file
	
//	private MultipartFile[] UploadedProfileImage;
//	private MultipartFile[] UploadedImage;
//	private MultipartFile[] UploadedFile;
	

    private MultipartFile[] plofil_image;
    private MultipartFile[] sub_image;
    private MultipartFile[] video;
	
	
	
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
    private String snsSeq;
    private String[] snsSeqs;
    
    private Integer sns_type;
	private Integer[] sns_types;
	private String url;
	private String[] urls;
	private Integer Upsns_type;
    private Integer[] Upsns_types;
    private String Upurl;
    private String[] Upurls;

    
//----------------------------------------------------------    
  
  private String filmoSeq;
  private String[] filmoSeqs;  
    
  private String filmo_period;
  private String[] filmo_periods;
  private Integer filmo_type;
  private Integer[] filmo_types;
  private String filmo_producer;
  private String[] filmo_producers;
  private String filmo_name;
  private String[] filmo_names;
  private String filmo_role;
  private String[] filmo_roles;
  
  private String Upfilmo_period;
  private String[] Upfilmo_periods;
  private Integer Upfilmo_type;
  private Integer[] Upfilmo_types;
  private String Upfilmo_producer;
  private String[] Upfilmo_producers;
  private String Upfilmo_name;
  private String[] Upfilmo_names;
  private String Upfilmo_role;
  private String[] Upfilmo_roles;

//--------------------------------------------------------
  
  private String eduSeq;
  private String[] eduSeqs;  
  
  private String edu_period_s;
  private String[] edu_periods_s;
  private String edu_period_e;
  private String[] edu_periods_e;
  private String school_name;
  private String[] school_names;
  private String edu_major;
  private String[] edu_majors;
  private Integer edu_type;
  private Integer[] edu_types;
  
  private String Upedu_period_s;
  private String[] Upedu_periods_s;
  private String Upedu_period_e;
  private String[] Upedu_periods_e;
  private String Upschool_name;
  private String[] Upschool_names;
  private String Upedu_major;
  private String[] Upedu_majors;
  private Integer Upedu_type;
  private Integer[] Upedu_types;
  
//----------------------------------------------------------    
  
  private String awardSeq;
  private String[] awardSeqs;  
  
  private String award_period;
  private String[] award_periods;
  private String award_name;
  private String[] award_names;
  private String award_issuer;
  private String[] award_issuers;
  
  private String Upaward_period;
  private String[] Upaward_periods;
  private String Upaward_name;
  private String[] Upaward_names;
  private String Upaward_issuer;
  private String[] Upaward_issuers;
  
//----------------------------------------------------------    
  
  private String career_period;
  private String[] career_periods;
  private String career_company_name;
  private String[] career_company_names;
  private String career_position;
  private String[] career_positions;
  
//----------------------------------------------------------    
  
  private Integer company_name_type;
  private Integer company_tel;
  private String company_zip_code;
  private String company_address;
  private String company_address_detail;
  private Integer company_Lat;
  private Integer company_Lng;
  
//----------------------------------------------------------    
  
  private String companyWork_period_s;
  private String[] companyWork_periods_s;
  private String companyWork_period_e;
  private String[] companyWork_periods_e;
  private Integer companyWork_type;
  private Integer[] companyWork_types;
  private String companyWork_name;
  private String[] companyWork_names;
	
//----------------------------------------------------------
  
  
  
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
	public String getMember_seq() {
        return member_seq;
    }
    public void setMember_seq(String member_seq) {
        this.member_seq = member_seq;
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
	public String getProducer() {
	    return producer;
	}
	public void setProducer(String producer) {
	    this.producer = producer;
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
	
	
    public String getFilmo_period() {
        return filmo_period;
    }
    public MultipartFile[] getSub_image() {
        return sub_image;
    }
    public void setSub_image(MultipartFile[] sub_image) {
        this.sub_image = sub_image;
    }
    public MultipartFile[] getVideo() {
        return video;
    }
    public void setVideo(MultipartFile[] video) {
        this.video = video;
    }
    public String getUrl() {
        return url;
    }
    public void setUrl(String url) {
        this.url = url;
    }
    public String[] getUrls() {
        return urls;
    }
    public void setUrls(String[] urls) {
        this.urls = urls;
    }
    public String getCompany_address_detail() {
        return company_address_detail;
    }
    public void setCompany_address_detail(String company_address_detail) {
        this.company_address_detail = company_address_detail;
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
    public Integer getSns_type() {
        return sns_type;
    }
    public void setSns_type(Integer sns_type) {
        this.sns_type = sns_type;
    }
    public Integer[] getSns_types() {
        return sns_types;
    }
    public void setSns_types(Integer[] sns_types) {
        this.sns_types = sns_types;
    }
    public String[] getFilmo_periods() {
        return filmo_periods;
    }
    public void setFilmo_periods(String[] filmo_periods) {
        this.filmo_periods = filmo_periods;
    }
    public Integer[] getFilmo_types() {
        return filmo_types;
    }
    public void setFilmo_types(Integer[] filmo_types) {
        this.filmo_types = filmo_types;
    }
    public String[] getFilmo_producers() {
        return filmo_producers;
    }
    public void setFilmo_producers(String[] filmo_producers) {
        this.filmo_producers = filmo_producers;
    }
    public String[] getFilmo_names() {
        return filmo_names;
    }
    public void setFilmo_names(String[] filmo_names) {
        this.filmo_names = filmo_names;
    }
    public String[] getFilmo_roles() {
        return filmo_roles;
    }
    public void setFilmo_roles(String[] filmo_roles) {
        this.filmo_roles = filmo_roles;
    }
    public String[] getSchool_names() {
        return school_names;
    }
    public void setSchool_names(String[] school_names) {
        this.school_names = school_names;
    }
    public String[] getEdu_majors() {
        return edu_majors;
    }
    public void setEdu_majors(String[] edu_majors) {
        this.edu_majors = edu_majors;
    }
    public Integer[] getEdu_types() {
        return edu_types;
    }
    public void setEdu_types(Integer[] edu_types) {
        this.edu_types = edu_types;
    }
    public String[] getAward_periods() {
        return award_periods;
    }
    public void setAward_periods(String[] award_periods) {
        this.award_periods = award_periods;
    }
    public String[] getAward_names() {
        return award_names;
    }
    public void setAward_names(String[] award_names) {
        this.award_names = award_names;
    }
    public String[] getAward_issuers() {
        return award_issuers;
    }
    public void setAward_issuers(String[] award_issuers) {
        this.award_issuers = award_issuers;
    }
    public String[] getCareer_periods() {
        return career_periods;
    }
    public void setCareer_periods(String[] career_periods) {
        this.career_periods = career_periods;
    }
    public String[] getCareer_company_names() {
        return career_company_names;
    }
    public void setCareer_company_names(String[] career_company_names) {
        this.career_company_names = career_company_names;
    }
    public String[] getCareer_positions() {
        return career_positions;
    }
    public void setCareer_positions(String[] career_positions) {
        this.career_positions = career_positions;
    }
    public String[] getCompanyWork_periods_s() {
        return companyWork_periods_s;
    }
    public void setCompanyWork_periods_s(String[] companyWork_periods_s) {
        this.companyWork_periods_s = companyWork_periods_s;
    }
    public String[] getCompanyWork_periods_e() {
        return companyWork_periods_e;
    }
    public void setCompanyWork_periods_e(String[] companyWork_periods_e) {
        this.companyWork_periods_e = companyWork_periods_e;
    }
    public Integer[] getCompanyWork_types() {
        return companyWork_types;
    }
    public void setCompanyWork_types(Integer[] companyWork_types) {
        this.companyWork_types = companyWork_types;
    }
    public String[] getCompanyWork_names() {
        return companyWork_names;
    }
    public void setCompanyWork_names(String[] companyWork_names) {
        this.companyWork_names = companyWork_names;
    }
    public String getPeriod() {
        return period;
    }
    public void setPeriod(String period) {
        this.period = period;
    }
    public String getRole() {
        return role;
    }
    public void setRole(String role) {
        this.role = role;
    }
    public String getMajor() {
        return major;
    }
    public void setMajor(String major) {
        this.major = major;
    }
    public String getEdu_period_s() {
        return edu_period_s;
    }
    public void setEdu_period_s(String edu_period_s) {
        this.edu_period_s = edu_period_s;
    }
    public String[] getEdu_periods_s() {
        return edu_periods_s;
    }
    public void setEdu_periods_s(String[] edu_periods_s) {
        this.edu_periods_s = edu_periods_s;
    }
    public String getEdu_period_e() {
        return edu_period_e;
    }
    public void setEdu_period_e(String edu_period_e) {
        this.edu_period_e = edu_period_e;
    }
    public String[] getEdu_periods_e() {
        return edu_periods_e;
    }
    public void setEdu_periods_e(String[] edu_periods_e) {
        this.edu_periods_e = edu_periods_e;
    }
    public String getPeriod_s() {
        return period_s;
    }
    public void setPeriod_s(String period_s) {
        this.period_s = period_s;
    }
    public String getPeriod_e() {
        return period_e;
    }
    public void setPeriod_e(String period_e) {
        this.period_e = period_e;
    }
    public Integer getUpsns_type() {
        return Upsns_type;
    }
    public void setUpsns_type(Integer upsns_type) {
        Upsns_type = upsns_type;
    }
    public Integer[] getUpsns_types() {
        return Upsns_types;
    }
    public void setUpsns_types(Integer[] upsns_types) {
        Upsns_types = upsns_types;
    }
    public String getUpurl() {
        return Upurl;
    }
    public void setUpurl(String upurl) {
        Upurl = upurl;
    }
    public String[] getUpurls() {
        return Upurls;
    }
    public void setUpurls(String[] upurls) {
        Upurls = upurls;
    }
    public String getSnsSeq() {
        return snsSeq;
    }
    public void setSnsSeq(String snsSeq) {
        this.snsSeq = snsSeq;
    }
    public String[] getSnsSeqs() {
        return snsSeqs;
    }
    public void setSnsSeqs(String[] snsSeqs) {
        this.snsSeqs = snsSeqs;
    }
    public String getFilmoSeq() {
        return filmoSeq;
    }
    public void setFilmoSeq(String filmoSeq) {
        this.filmoSeq = filmoSeq;
    }
    public String[] getFilmoSeqs() {
        return filmoSeqs;
    }
    public void setFilmoSeqs(String[] filmoSeqs) {
        this.filmoSeqs = filmoSeqs;
    }
    public String getUpfilmo_period() {
        return Upfilmo_period;
    }
    public void setUpfilmo_period(String upfilmo_period) {
        Upfilmo_period = upfilmo_period;
    }
    public String[] getUpfilmo_periods() {
        return Upfilmo_periods;
    }
    public void setUpfilmo_periods(String[] upfilmo_periods) {
        Upfilmo_periods = upfilmo_periods;
    }
    public Integer getUpfilmo_type() {
        return Upfilmo_type;
    }
    public void setUpfilmo_type(Integer upfilmo_type) {
        Upfilmo_type = upfilmo_type;
    }
    public Integer[] getUpfilmo_types() {
        return Upfilmo_types;
    }
    public void setUpfilmo_types(Integer[] upfilmo_types) {
        Upfilmo_types = upfilmo_types;
    }
    public String getUpfilmo_producer() {
        return Upfilmo_producer;
    }
    public void setUpfilmo_producer(String upfilmo_producer) {
        Upfilmo_producer = upfilmo_producer;
    }
    public String[] getUpfilmo_producers() {
        return Upfilmo_producers;
    }
    public void setUpfilmo_producers(String[] upfilmo_producers) {
        Upfilmo_producers = upfilmo_producers;
    }
    public String getUpfilmo_name() {
        return Upfilmo_name;
    }
    public void setUpfilmo_name(String upfilmo_name) {
        Upfilmo_name = upfilmo_name;
    }
    public String[] getUpfilmo_names() {
        return Upfilmo_names;
    }
    public void setUpfilmo_names(String[] upfilmo_names) {
        Upfilmo_names = upfilmo_names;
    }
    public String getUpfilmo_role() {
        return Upfilmo_role;
    }
    public void setUpfilmo_role(String upfilmo_role) {
        Upfilmo_role = upfilmo_role;
    }
    public String[] getUpfilmo_roles() {
        return Upfilmo_roles;
    }
    public void setUpfilmo_roles(String[] upfilmo_roles) {
        Upfilmo_roles = upfilmo_roles;
    }
    public String getEduSeq() {
        return eduSeq;
    }
    public void setEduSeq(String eduSeq) {
        this.eduSeq = eduSeq;
    }
    public String[] getEduSeqs() {
        return eduSeqs;
    }
    public void setEduSeqs(String[] eduSeqs) {
        this.eduSeqs = eduSeqs;
    }
    public String getUpedu_period_s() {
        return Upedu_period_s;
    }
    public void setUpedu_period_s(String upedu_period_s) {
        Upedu_period_s = upedu_period_s;
    }
    public String[] getUpedu_periods_s() {
        return Upedu_periods_s;
    }
    public void setUpedu_periods_s(String[] upedu_periods_s) {
        Upedu_periods_s = upedu_periods_s;
    }
    public String getUpedu_period_e() {
        return Upedu_period_e;
    }
    public void setUpedu_period_e(String upedu_period_e) {
        Upedu_period_e = upedu_period_e;
    }
    public String[] getUpedu_periods_e() {
        return Upedu_periods_e;
    }
    public void setUpedu_periods_e(String[] upedu_periods_e) {
        Upedu_periods_e = upedu_periods_e;
    }
    public String getUpschool_name() {
        return Upschool_name;
    }
    public void setUpschool_name(String upschool_name) {
        Upschool_name = upschool_name;
    }
    public String[] getUpschool_names() {
        return Upschool_names;
    }
    public void setUpschool_names(String[] upschool_names) {
        Upschool_names = upschool_names;
    }
    public String getUpedu_major() {
        return Upedu_major;
    }
    public void setUpedu_major(String upedu_major) {
        Upedu_major = upedu_major;
    }
    public String[] getUpedu_majors() {
        return Upedu_majors;
    }
    public void setUpedu_majors(String[] upedu_majors) {
        Upedu_majors = upedu_majors;
    }
    public Integer getUpedu_type() {
        return Upedu_type;
    }
    public void setUpedu_type(Integer upedu_type) {
        Upedu_type = upedu_type;
    }
    public Integer[] getUpedu_types() {
        return Upedu_types;
    }
    public void setUpedu_types(Integer[] upedu_types) {
        Upedu_types = upedu_types;
    }
    public String getAwardSeq() {
        return awardSeq;
    }
    public void setAwardSeq(String awardSeq) {
        this.awardSeq = awardSeq;
    }
    public String[] getAwardSeqs() {
        return awardSeqs;
    }
    public void setAwardSeqs(String[] awardSeqs) {
        this.awardSeqs = awardSeqs;
    }
    public String getUpaward_period() {
        return Upaward_period;
    }
    public void setUpaward_period(String upaward_period) {
        Upaward_period = upaward_period;
    }
    public String[] getUpaward_periods() {
        return Upaward_periods;
    }
    public void setUpaward_periods(String[] upaward_periods) {
        Upaward_periods = upaward_periods;
    }
    public String getUpaward_name() {
        return Upaward_name;
    }
    public void setUpaward_name(String upaward_name) {
        Upaward_name = upaward_name;
    }
    public String[] getUpaward_names() {
        return Upaward_names;
    }
    public void setUpaward_names(String[] upaward_names) {
        Upaward_names = upaward_names;
    }
    public String getUpaward_issuer() {
        return Upaward_issuer;
    }
    public void setUpaward_issuer(String upaward_issuer) {
        Upaward_issuer = upaward_issuer;
    }
    public String[] getUpaward_issuers() {
        return Upaward_issuers;
    }
    public void setUpaward_issuers(String[] upaward_issuers) {
        Upaward_issuers = upaward_issuers;
    }
    public String getIssuer() {
        return issuer;
    }
    public void setIssuer(String issuer) {
        this.issuer = issuer;
    }
    public String getFileSeq() {
        return fileSeq;
    }
    public void setFileSeq(String fileSeq) {
        this.fileSeq = fileSeq;
    }
    public String getIfspSeq() {
        return ifspSeq;
    }
    public void setIfspSeq(String ifspSeq) {
        this.ifspSeq = ifspSeq;
    }
    public String getOdition_seq() {
        return odition_seq;
    }
    public void setOdition_seq(String odition_seq) {
        this.odition_seq = odition_seq;
    }
    public String getMm_seq() {
        return mm_seq;
    }
    public void setMm_seq(String mm_seq) {
        this.mm_seq = mm_seq;
    }
    
    
	
	

}
