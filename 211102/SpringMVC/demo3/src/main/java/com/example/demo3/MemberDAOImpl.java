package com.example.demo3;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class MemberDAOImpl implements MemberDAO {

    @Autowired(required = false)
    SqlSessionTemplate sqlSessionTemplate;

    @Override
    public List<MemberVO> selectInfo(MemberVO mvo) {
        return sqlSessionTemplate.selectList("selectQuery", mvo);
    }
}
