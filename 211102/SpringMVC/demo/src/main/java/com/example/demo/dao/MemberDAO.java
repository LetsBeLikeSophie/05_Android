package com.example.demo.dao;

import com.example.demo.vo.MemberVO;

import java.util.List;

public interface MemberDAO {

    List<MemberVO> showInfo(MemberVO mvo);
}
