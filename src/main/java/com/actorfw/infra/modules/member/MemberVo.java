package com.actorfw.infra.modules.member;

public class MemberVo {
//	seq
	private Integer seq;
	
//	search
	private String shValue;					//value값(내용)
	private Integer shOption;				//선택옵션
	private Integer shUseOption;			//useNY
	private Integer shDelOption;			//delNy
	private String shDelNy;
//	날짜
	private Integer shOptionDate;			//날짜선택 옵션
	private Integer shDateStart;			//시작날짜
	private Integer shDateEnd;				//끝날짜

	
	
//------------------------------------
	
	public String getShValue() {
		return shValue;
	}
	public Integer getSeq() {
		return seq;
	}
	public void setSeq(Integer seq) {
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
	public String getShDelNy() {
		return shDelNy;
	}
	public void setShDelNy(String shDelNy) {
		this.shDelNy = shDelNy;
	}
	public Integer getShOptionDate() {
		return shOptionDate;
	}
	public void setShOptionDate(Integer shOptionDate) {
		this.shOptionDate = shOptionDate;
	}
	public Integer getShDateStart() {
		return shDateStart;
	}
	public void setShDateStart(Integer shDateStart) {
		this.shDateStart = shDateStart;
	}
	public Integer getShDateEnd() {
		return shDateEnd;
	}
	public void setShDateEnd(Integer shDateEnd) {
		this.shDateEnd = shDateEnd;
	}
	
}
