package com.actorfw.infra.modules.code;

import java.util.ArrayList;
import java.util.List;

public class Code {
	
//	cc
	private String seq;
	private String name;
	private Integer oder;
	private Integer useNy;
	private Integer delNy;
	private Integer ccg_seq;
	private String creDate;
	private String modDate;
	
	public static List<Code> cachedCodeArrayList = new ArrayList<Code>();
	
//-------------------------------------	
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getOder() {
		return oder;
	}
	public void setOder(Integer oder) {
		this.oder = oder;
	}
	public Integer getUseNy() {
		return useNy;
	}
	public void setUseNy(Integer useNy) {
		this.useNy = useNy;
	}
	public Integer getDelNy() {
		return delNy;
	}
	public void setDelNy(Integer delNy) {
		this.delNy = delNy;
	}
	public Integer getCcg_seq() {
		return ccg_seq;
	}
	public void setCcg_seq(Integer ccg_seq) {
		this.ccg_seq = ccg_seq;
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
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public static List<Code> getCachedCodeArrayList() {
		return cachedCodeArrayList;
	}
	public static void setCachedCodeArrayList(List<Code> cachedCodeArrayList) {
		Code.cachedCodeArrayList = cachedCodeArrayList;
	}
	
	
	
}
