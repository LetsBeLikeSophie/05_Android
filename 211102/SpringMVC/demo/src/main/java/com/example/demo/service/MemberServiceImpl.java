package com.example.demo.service;

import com.example.demo.vo.MemberVO;

import javax.xml.ws.ServiceMode;
import java.util.List;


@Service
@Transactional
public class MemberServiceImpl implements MemberService {

    @Override
    public List<MemberVO> showInfo(MemberVO mvo) {
        return null;
    }
}
