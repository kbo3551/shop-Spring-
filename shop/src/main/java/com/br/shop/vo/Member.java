package com.br.shop.vo;

import lombok.Data;

@Data
public class Member {

	private int memberNo;
	private String memberId;
	private String memberPw;
	private int memberLevel;
	private String memberName;
	private int memberAge;
	private String memberGender;
	private String updateDate;
	private String createDate;
}
