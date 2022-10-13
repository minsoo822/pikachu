package com.actorfw.infra.modules.code;

import com.actorfw.infra.common.base.BaseVo;

public class CodeVo extends BaseVo{

	private String seq;				//시퀀스
	private String ccg_seq;
//	search
	private String shValue;			//value값(내용)
	private Integer shOption;		

//	useNy
	private Integer shUseOption;	//useNY
//	delNy
	private Integer shDelOption;	//delNy
	private String shDateOption;
	private String shDelNy;
//	날짜
//	private Integer shOptionDate;			//날짜선택 옵션
//	private Integer shDateStart;			//시작날짜
//	private Integer shDateEnd;				//끝날짜	
	

//----------------------------------------------------	
	
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getCcg_seq() {
		return ccg_seq;
	}
	public void setCcg_seq(String ccg_seq) {
		this.ccg_seq = ccg_seq;
	}
	public Integer getShOption() {
		return shOption;
	}
	public void setShOption(Integer shOption) {
		this.shOption = shOption;
	}
	public String getShValue() {
		return shValue;
	}
	public void setShValue(String shValue) {
		this.shValue = shValue;
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

	public String getShDateOption() {
		return shDateOption;
	}
	public void setShDateOption(String shDateOption) {
		this.shDateOption = shDateOption;
	}

	
	
	
	
}
