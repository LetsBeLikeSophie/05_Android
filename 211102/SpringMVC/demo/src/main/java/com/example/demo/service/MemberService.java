package com.example.demo.service;

import com.example.demo.vo.MemberVO;

import java.util.List;

public interface MemberService {

    List<MemberVO> showInfo(MemberVO mvo);
}
