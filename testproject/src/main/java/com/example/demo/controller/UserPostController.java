package com.example.demo.controller;

import java.sql.Date;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.model.Member;
import com.example.demo.model.SnsBoard;
import com.example.demo.model.Totalpage;
import com.example.demo.service.PagingPgm;
import com.example.demo.service.UserPostService;

import jakarta.servlet.http.HttpSession;  // javax.servlet 대신 jakarta.servlet 사용
import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class UserPostController {

    private final UserPostService userPostService;

    @RequestMapping("/userPostList")  
    public String getUserPosts(HttpSession session,  
                               @RequestParam(value = "pageNum", defaultValue = "1") String pageNum,
                               Model model) {

        // 세션에서 Member 객체 가져오기
        Member member = (Member) session.getAttribute("member");

        // 테스트용: 세션에 member가 없으면 임의로 Member 객체를 추가
        if (member == null) {
        	  return "redirect:/loginpage";
        }

        // Member 객체에서 userId 가져오기
        String userId = member.getUser_id(); 
        
        
        Totalpage[] tp1 = userPostService.getSnsboard(userId);
        
        Totalpage[] tp2 = userPostService.getMateboard(userId);
        
        List<Totalpage> totalpage = new ArrayList<Totalpage>();
        
        for(Totalpage p1 : tp1) {
        	totalpage.add(p1);
        }
        
        for(Totalpage p2 : tp2) {
        	totalpage.add(p2);
        }
        
        Collections.sort(totalpage,(Totalpage a,Totalpage b)->{
        	int result =1;
        	Date aDate,bDate;
        	if(a.getRecruit_no()==0) aDate=a.getSns_date();
        	else aDate=a.getRecruit_date();
        	
        	if(b.getRecruit_no()==0) bDate=b.getSns_date();
        	else bDate=b.getRecruit_date();
        	
        	if(aDate.compareTo(bDate)>0) result= -1;
        	
        	return result;
        });
        
        

        final int rowPerPage = 10;
        int currentPage = Integer.parseInt(pageNum);

        // 사용자의 총 게시글 수
        int total = totalpage.size();        
        int startRow = (currentPage - 1) * rowPerPage+1;
        int endRow = startRow + rowPerPage - 1;

        // 페이징 객체 생성
        PagingPgm pp = new PagingPgm(total, rowPerPage, currentPage);

        // 사용자 게시글 목록 가져오기
        List list = new ArrayList();
        
        for(int i=0;i<rowPerPage;i++) {
        	if(totalpage.get(startRow-1).getRecruit_no()==0) list.add(userPostService.getSns(totalpage.get(startRow-1).getSns_no()));
        	else list.add(userPostService.getRecruit(totalpage.get(startRow-1).getRecruit_no()));
        }
        
        
        int no = total - startRow + 1;

        // 모델에 데이터 추가
        model.addAttribute("list", list);
        model.addAttribute("no", no);
        model.addAttribute("pp", pp);
        model.addAttribute("userId", userId);

        // userPostList.jsp 페이지로 반환
        return "userPostList";
    }
    
	@RequestMapping("/mywriting")
	public String mywriting() {
		return "mywriting";
	}

}
