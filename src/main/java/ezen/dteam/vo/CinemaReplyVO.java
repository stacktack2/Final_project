package ezen.dteam.vo;

public class CinemaReplyVO {
	private int ccmtno;
	private String ccmtContent;
	private String ccmtRdadte;
	private int ccmtLikeCnt;
	private int ccmtDelyn;
	private int cno;
	private int mno;
	private int ccode;
	

	public CinemaReplyVO() {}
	public CinemaReplyVO(int ccode, String ccmtContent, int mno) {
		super();
		this.ccmtContent = ccmtContent;
		this.mno = mno;
		this.ccode=ccode;
	}
	public int getCcmtno() {
		return ccmtno;
	}
	public void setCcmtno(int ccmtno) {
		this.ccmtno = ccmtno;
	}
	public String getCcmtContent() {
		return ccmtContent;
	}
	public void setCcmtContent(String ccmtContent) {
		this.ccmtContent = ccmtContent;
	}
	public String getCcmtRdadte() {
		return ccmtRdadte;
	}
	public void setCcmtRdadte(String ccmtRdadte) {
		this.ccmtRdadte = ccmtRdadte;
	}
	public int getCcmtLikeCnt() {
		return ccmtLikeCnt;
	}
	public void setCcmtLikeCnt(int ccmtLikeCnt) {
		this.ccmtLikeCnt = ccmtLikeCnt;
	}
	public int getCcmtDelyn() {
		return ccmtDelyn;
	}
	public void setCcmtDelyn(int ccmtDelyn) {
		this.ccmtDelyn = ccmtDelyn;
	}
	public int getCno() {
		return cno;
	}
	public void setCno(int cno) {
		this.cno = cno;
	}
	public int getMno() {
		return mno;
	}
	public void setMno(int mno) {
		this.mno = mno;
	}
	public int getCcode() {
		return ccode;
	}
	public void setCcode(int ccode) {
		this.ccode = ccode;
	}

}
