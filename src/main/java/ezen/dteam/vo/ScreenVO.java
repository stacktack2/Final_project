package ezen.dteam.vo;

public class ScreenVO {
	private int sno;
	private String sstartTime;
	private String sendTime;
	private int cno;
	private int shallno;
	private String sday;
	private String cname;
	
	
	
	
	

	public ScreenVO(String sstartTime, String sendTime, int cno, int shallno, String sday) {
		super();
		this.sstartTime = sstartTime;
		this.sendTime = sendTime;
		this.cno = cno;
		this.shallno = shallno;
		this.sday = sday;
	}

	public ScreenVO() {
		super();
	}

	public ScreenVO(int shallno, String sday) {
		super();
		this.shallno = shallno;
		
		this.sday = sday;
	}
	
	public String getSday() {
		return sday;
	}
	public void setSday(String sday) {
		this.sday = sday;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public int getSno() {
		return sno;
	}
	public void setSno(int sno) {
		this.sno = sno;
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
	public int getCno() {
		return cno;
	}
	public void setCno(int cno) {
		this.cno = cno;
	}
	public int getShallno() {
		return shallno;
	}
	public void setShallno(int shallno) {
		this.shallno = shallno;
	}
	
	
}
