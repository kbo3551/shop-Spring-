package com.br.shop.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.br.shop.mapper.MemberMapper;
import com.br.shop.vo.Member;

import lombok.extern.slf4j.Slf4j;

@Service
@Transactional
@Slf4j
public class MemberService {
	@Autowired MemberMapper memberMapper;

	// 회원 추가
	public void addMember(Member member) {
		log.trace("service_addMember"+member.toString());
		memberMapper.insertMember(member);
		return;
	}
}
