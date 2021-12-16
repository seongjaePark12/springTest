package com.spring.springTest.Interceptor;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class BoardInterceptor extends HandlerInterceptorAdapter{
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		HttpSession session = request.getSession();
		int level = session.getAttribute("sLevel") == null ? 99 : (Integer) session.getAttribute("sLevel");
		System.out.println("----------------------------------------");
		System.out.println("게시판으로 들어갑니다 현재레벨" + level);
		// 게시판은 정회원(level=3) 이하만 가능하다(level 0,1,2,3)
		if(level > 3) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("/tiles/tilesMain");
			dispatcher.forward(request, response);
			return false;
		}
		else {
			return true;
		}
	}
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
		System.out.println("게시판을 나갑니다");
		System.out.println("----------------------------------------");
	}
}
