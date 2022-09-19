package com.actorfw.infra.modules.member;

public class MemberVo {
//	seq
	private String seq;
//	search
	private String shValue;
	private Integer shOption;
//	useNy
	private Integer shUseOption;
//	delNy
	private Integer shDelOption;
	
	
//------------------------------------
	
	public String getShValue() {
		return shValue;
	}
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public void setShValue(String shValue) {
		this.shValue = shValue;
	}
	public Integer getShOption() {
		return shOption;
	}
	public void setShOption(Integer shOption) {
		this.shOption = shOption;
	}
	public Integer getShUseOption() {
		return shUseOption;
	}
	public void setShUseOption(Integer shUseOption) {
		this.shUseOption = shUseOption;
	}
	public Integer getShDelOption() {
		return shDelOption;
	}
	public void setShDelOption(Integer shDelOption) {
		this.shDelOption = shDelOption;
	}
	
}
