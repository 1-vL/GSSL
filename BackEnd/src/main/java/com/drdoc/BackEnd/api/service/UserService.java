package com.drdoc.BackEnd.api.service;

import com.drdoc.BackEnd.api.domain.dto.RefreshTokenDto;
import com.drdoc.BackEnd.api.domain.dto.TokenDto;
import com.drdoc.BackEnd.api.domain.dto.UserLoginRequestDto;
import com.drdoc.BackEnd.api.domain.dto.UserRegisterRequestDto;

public interface UserService {
    //회원가입
	void register(UserRegisterRequestDto user);

    //로그인
	TokenDto login(UserLoginRequestDto userLoginRequestDto);

    //회원 1명 조회
//    User findByMemberId(String memberId);

    //memberId 중복체크
    boolean checkMemberId(String memberId);
	
    //닉네임 중복체크
    boolean checkNickname(String nickname);

    // 회원정보 수정
//    void modify(User user); // dto로 추가예정

    //비밀번호 수정
//    void modifyPassword(String memberId, String password);

    //삭제
//    void delete(String memberId);

    //로그아웃
    void logout(String refresh_token);
	
    TokenDto reissue(RefreshTokenDto tokenRequestDto);

}