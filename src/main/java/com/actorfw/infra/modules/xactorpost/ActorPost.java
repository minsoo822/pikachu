package com.actorfw.infra.modules.xactorpost;

import org.springframework.web.multipart.MultipartFile;

import com.actorfw.infra.common.base.Base;

public class ActorPost extends Base {

	
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
	private String zip_code;
	private String address;
	private String address_detail;
	private Integer address_Lat;
	private Integer address_Lng;
	private Integer delNy;
	private String creDate;
	private String modDate;
	private Integer adminNy;
	private String actor_specialty;
	private String aboutMe;
	
//--------------------------------------------------------
	   private MultipartFile[] plofil_image;
//--------------------------------------------------------	   
	private String sns_seq;
	private Integer sns_type;
	private String url;
	private Integer member_seq;
	
	
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
	public String getZip_code() {
		return zip_code;
	}
	public void setZip_code(String zip_code) {
		this.zip_code = zip_code;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getAddress_detail() {
		return address_detail;
	}
	public void setAddress_detail(String address_detail) {
		this.address_detail = address_detail;
	}
	public Integer getAddress_Lat() {
		return address_Lat;
	}
	public void setAddress_Lat(Integer address_Lat) {
		this.address_Lat = address_Lat;
	}
	public Integer getAddress_Lng() {
		return address_Lng;
	}
	public void setAddress_Lng(Integer address_Lng) {
		this.address_Lng = address_Lng;
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
//------------------------------------------------------
	public MultipartFile[] getPlofil_image() {
        return plofil_image;
    }
    public void setPlofil_image(MultipartFile[] plofil_image) {
        this.plofil_image = plofil_image;
    }
//------------------------------------------------------	
	public String getSns_seq() {
		return sns_seq;
	}
	
    public void setSns_seq(String sns_seq) {
		this.sns_seq = sns_seq;
	}
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
	public Integer getMember_seq() {
		return member_seq;
	}
	public void setMember_seq(Integer member_seq) {
		this.member_seq = member_seq;
	}
}
