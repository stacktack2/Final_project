package ezen.dteam.vo;

public class TicketVO {
	private int ticketno;		//예매번호
	private String ticketTime;	//예매시간
	private int ticketDelyn;	//예매취소여부
	private String mno;			//회원번호
	//추가된 것
	private int sno;			//상영번호
	private int sseatno;		//좌석번호
	private String sseatCol;	//좌석 열 이름
	private String sseatRow;	//좌석 행 번호
	private String sseatType;	//좌석타입
	private int shallno;		//상영관 번호
	private String sstartTime;	//상영시작시간
	private String sendTime;	//상영종료시간
	
	public final int getTicketno() {
		return ticketno;
	}
	public final void setTicketno(int ticketno) {
		this.ticketno = ticketno;
	}
	public final String getTicketTime() {
		return ticketTime;
	}
	public final void setTicketTime(String ticketTime) {
		this.ticketTime = ticketTime;
	}
	public final int getTicketDelyn() {
		return ticketDelyn;
	}
	public final void setTicketDelyn(int ticketDelyn) {
		this.ticketDelyn = ticketDelyn;
	}
	public final String getMno() {
		return mno;
	}
	public final void setMno(String mno) {
		this.mno = mno;
	}
	public int getSno() {
		return sno;
	}
	public void setSno(int sno) {
		this.sno = sno;
	}
	public int getSseatno() {
		return sseatno;
	}
	public void setSseatno(int sseatno) {
		this.sseatno = sseatno;
	}
	public String getSseatCol() {
		return sseatCol;
	}
	public void setSseatCol(String sseatCol) {
		this.sseatCol = sseatCol;
	}
	public String getSseatRow() {
		return sseatRow;
	}
	public void setSseatRow(String sseatRow) {
		this.sseatRow = sseatRow;
	}
	public String getSseatType() {
		return sseatType;
	}
	public void setSseatType(String sseatType) {
		this.sseatType = sseatType;
	}
	public int getShallno() {
		return shallno;
	}
	public void setShallno(int shallno) {
		this.shallno = shallno;
	}
	public String getSstartTime() {
		return sstartTime;
	}
	public void setSstartTime(String sstartTime) {
		this.sstartTime = sstartTime;
	}
	public String getSendTime() {
		return sendTime;
	}
	public void setSendTime(String sendTime) {
		this.sendTime = sendTime;
	}
	
	
}
