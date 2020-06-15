package kr.or.kpc.dto;

public class MemberDto {
	private int num;
	private String name;
	private String addr;

	// default constructor
	// alt + shift + s, c
	public MemberDto() {
		super();
	}

	// 매개변수가 있는 생성자
	// alt + shift + s, o
	public MemberDto(int num, String name, String addr) {
		super();
		this.num = num;
		this.name = name;
		this.addr = addr;
	}

	// getter, setter
	// alt + shift + s, r
	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

}

