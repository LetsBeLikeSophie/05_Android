package com.solip.dao;

import com.solip.vo.MemberVO;

import java.util.List;

public interface MemberDAO {
    List<MemberVO> showInfo(MemberVO mvo);

}
