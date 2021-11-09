package com.solip.service;

import com.solip.dao.MemberDAO;
import com.solip.vo.MemberVO;
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
    public List<MemberVO> showInfo(MemberVO mvo) {
        return memberDAO.showInfo(mvo);
    }
}
