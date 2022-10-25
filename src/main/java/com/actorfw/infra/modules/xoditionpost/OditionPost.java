package com.actorfw.infra.modules.xoditionpost;

import org.springframework.web.multipart.MultipartFile;

import com.actorfw.infra.common.base.Base;

public class OditionPost extends Base {

	private String seq;
	
//	oditionPost
	private String member_seq;
	private Integer type;
	private String name;
	private String age;
	private Integer gender;
	private String casting;
	private String producer;
	private String director;
	private String location;
	private String deadline;
	private String manager;
	private String pay;
	private String email;
	private String contents;
	
	private MultipartFile[] post_image;

//----------------------------------------	
	
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
  
//----------------------------------------	
	  public String getMember_seq() {
	        return member_seq;
	    }
	    public void setMember_seq(String member_seq) {
	        this.member_seq = member_seq;
	    }
	    public Integer getType() {
	        return type;
	    }
	    public void setType(Integer type) {
	        this.type = type;
	    }
	    public String getName() {
	        return name;
	    }
	    public void setName(String name) {
	        this.name = name;
	    }
	    public String getAge() {
	        return age;
	    }
	    public void setAge(String age) {
	        this.age = age;
	    }
	    public Integer getGender() {
	        return gender;
	    }
	    public void setGender(Integer gender) {
	        this.gender = gender;
	    }
	    public String getCasting() {
	        return casting;
	    }
	    public void setCasting(String casting) {
	        this.casting = casting;
	    }
	    public String getProducer() {
	        return producer;
	    }
	    public void setProducer(String producer) {
	        this.producer = producer;
	    }
	    public String getDirector() {
	        return director;
	    }
	    public void setDirector(String director) {
	        this.director = director;
	    }
	    public String getLocation() {
	        return location;
	    }
	    public void setLocation(String location) {
	        this.location = location;
	    }
	    public String getDeadline() {
	        return deadline;
	    }
	    public void setDeadline(String deadline) {
	        this.deadline = deadline;
	    }
	    public String getManager() {
	        return manager;
	    }
	    public void setManager(String manager) {
	        this.manager = manager;
	    }
	    public String getPay() {
	        return pay;
	    }
	    public void setPay(String pay) {
	        this.pay = pay;
	    }
	    public String getEmail() {
	        return email;
	    }
	    public void setEmail(String email) {
	        this.email = email;
	    }
	    public String getContents() {
	        return contents;
	    }
	    public void setContents(String contents) {
	        this.contents = contents;
	    }
        public MultipartFile[] getPost_image() {
            return post_image;
        }
        public void setPost_image(MultipartFile[] post_image) {
            this.post_image = post_image;
        }
	    
	
//----------------------------------------
	
	
	
	
}
