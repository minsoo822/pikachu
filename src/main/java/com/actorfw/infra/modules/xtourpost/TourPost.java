package com.actorfw.infra.modules.xtourpost;

public class TourPost {
	
	
	private String seq;
//	tourPost
	private String	tourSeq;
	private Integer tourType;
	private String tourName;
	private String tourZip_code;
	private String tourAddress;
	private String tourAddress_detail;
	private String	tourDate;
	private String	tourNote;
	

	
	//----------------------------------------	
	
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	
	//---------------------------------------------------
	public String getTourSeq() {
		return tourSeq;
	}
	
	public void setTourSeq(String tourSeq) {
		this.tourSeq = tourSeq;
	}
	public Integer getTourType() {
		return tourType;
	}
	public void setTourType(Integer tourType) {
		this.tourType = tourType;
	}
	public String getTourName() {
		return tourName;
	}
	public void setTourName(String tourName) {
		this.tourName = tourName;
	}
	
	public String getTourZip_code() {
		return tourZip_code;
	}
	public void setTourZip_code(String tourZip_code) {
		this.tourZip_code = tourZip_code;
	}
	public String getTourAddress() {
		return tourAddress;
	}
	public void setTourAddress(String tourAddress) {
		this.tourAddress = tourAddress;
	}
	public String getTourAddress_detail() {
		return tourAddress_detail;
	}
	public void setTourAddress_detail(String tourAddress_detail) {
		this.tourAddress_detail = tourAddress_detail;
	}
	public String getTourDate() {
		return tourDate;
	}
	public void setTourDate(String tourDate) {
		this.tourDate = tourDate;
	}
	public String getTourNote() {
		return tourNote;
	}
	public void setTourNote(String tourNote) {
		this.tourNote = tourNote;
	}
	

	

	
}
