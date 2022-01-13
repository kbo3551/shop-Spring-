package com.br.shop.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.br.shop.vo.Member;
@Mapper
public interface MemberMapper {
	//회원 생성
	void insertMember(Member member);
}
