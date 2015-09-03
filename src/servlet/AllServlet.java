package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.impl.IndexDaoImp;
import service.LoginService;
import service.impl.LoginServiceImpl;
import vo.Goods;
import vo.User;

public class AllServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		response.setContentType("text/html;charset=utf-8");
		
		
		LoginService loginService=new LoginServiceImpl();
		//截取浏览器地址
		String str=request.getRequestURI().substring(request.getRequestURI().lastIndexOf("/"), request.getRequestURI().lastIndexOf("."));
		//登陆
		if("/login".equals(str)){
			String username=request.getParameter("username");
			String pwd=request.getParameter("pwd");
			User user=loginService.findUserByUserName(username);
			if(user!=null&&pwd.equals(user)){
				response.sendRedirect("/WEB-INF/jsp/chenggong.jsp");
				return ;
			}
			request.setAttribute("erro","您输入的账号或密码错误,请核对后重新输入");
			request.getRequestDispatcher("/WEB-INF/jsp/login.jsp").forward(request, response);
			
		}
		/**
		 * 
		 * 主页业务实现
		 * 
		**/
		else if("/index".equals(str)){
			IndexDaoImp in=new IndexDaoImp();
			List <Goods>list=in.findAll();//检测1正常
//			for(Goods s:list){
//				System.out.println(s.getGoods_ishead());
//			}
			request.setAttribute("allGoods", list);
			
			request.getRequestDispatcher("index.jsp").forward(request, response);
			
			
			
		}else if("/zhuce".equals(str)){//注册
			User user=new User();
			loginService.saveUser(user);
			request.getRequestDispatcher("/WEB-INF/jsp/login.jsp").forward(request, response);
		}else if("/find".equals(str)){//
			String uuid=request.getParameter("uuid");
			
			request.getRequestDispatcher("/WEB-INF/jsp/findCommodity.jsp").forward(request, response);
		}

	}

	public void init() throws ServletException {
		// Put your code here
	}

}
