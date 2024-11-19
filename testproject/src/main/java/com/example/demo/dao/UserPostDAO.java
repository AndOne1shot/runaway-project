package com.example.demo.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.example.demo.model.RecruitBoard;
import com.example.demo.model.SnsBoard;
import com.example.demo.model.Totalpage;

@Mapper
public interface UserPostDAO {
    // 특정 사용자의 게시글 총 개수 조회
    int getTotalByUserId(@Param("userId") String userId);

    // 특정 사용자의 게시글 목록 조회 (페이징 처리)
    List<SnsBoard> listByUserId(@Param("userId") String userId,
                                @Param("startRow") int startRow,
                                @Param("endRow") int endRow);

	Totalpage[] getSnsboard(String userId);

	Totalpage[] getMateboard(String userId);

	SnsBoard getSns(int sns_no);

	RecruitBoard getRecruit(int recruit_no);
}