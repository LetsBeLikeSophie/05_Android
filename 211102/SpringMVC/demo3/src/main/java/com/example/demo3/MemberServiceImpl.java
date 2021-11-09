package com.example.demo3;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class MemberServiceImpl implements MemberService {

    @Autowired(required = false)
    MemberDAO memberDAO;

    @Override
    public List<MemberVO> selectInfo(MemberVO mvo) {
        return memberDAO.selectInfo(mvo);
    }
}
