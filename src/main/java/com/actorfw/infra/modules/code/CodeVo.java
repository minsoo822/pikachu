package com.actorfw.infra.modules.code;

import com.actorfw.infra.common.base.BaseVo;

public class CodeVo extends BaseVo{

	private String seq;				//시퀀스
	private String ccg_seq;


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

	
	
	
}
