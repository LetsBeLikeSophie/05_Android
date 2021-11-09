package com.example.demo3;

public class MemberVO {

    private String name;
    private String info;

    public MemberVO(String name) {
    }

    public MemberVO(String name, String info) {
        this.name = name;
        this.info = info;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info;
    }
}
