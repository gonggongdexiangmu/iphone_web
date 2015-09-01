package filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import vo.User;

public class IsLoginFilter implements Filter{

	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		HttpServletRequest httpServletRequest=(HttpServletRequest) request;
//		System.out.println(httpServletRequest.getRequestURI());
		if(httpServletRequest.getRequestURI().endsWith("/login.do")||httpServletRequest.getRequestURI().endsWith("/shouye.do")){
			chain.doFilter(request, response);
		}else if(httpServletRequest.getRequestURI().endsWith(".do")){
			HttpSession httpSession=httpServletRequest.getSession();
			User user=(User) httpSession.getAttribute("user");
			if(user==null){
				request.setAttribute("isloginerro", "您必须登录之后才可以进行该操作");
//				System.out.println(1);
				request.getRequestDispatcher("/WEB-INF/jsp/login.jsp").forward(request, response);
			}else{
//				System.out.println(2);
				chain.doFilter(request, response);
			}
		}else{
			request.getRequestDispatcher("shouye.do").forward(request, response);
		}
	}

	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub
		
	}

}
