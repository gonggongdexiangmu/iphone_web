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
		//��ȡ�������ַ
		String str=request.getRequestURI().substring(request.getRequestURI().lastIndexOf("/"), request.getRequestURI().lastIndexOf("."));
		//��½
		if("/login".equals(str)){
			String username=request.getParameter("username");
			String pwd=request.getParameter("pwd");
			User user=loginService.findUserByUserName(username);
			if(user!=null&&pwd.equals(user)){
				response.sendRedirect("/WEB-INF/jsp/chenggong.jsp");
				return ;
			}
			request.setAttribute("erro","��������˺Ż��������,��˶Ժ���������");
			request.getRequestDispatcher("/WEB-INF/jsp/login.jsp").forward(request, response);
			
		}
		/**
		 * 
		 * ��ҳҵ��ʵ��
		 * 
		**/
		else if("/index".equals(str)){
			IndexDaoImp in=new IndexDaoImp();
			List <Goods>list=in.findAll();//���1����
//			for(Goods s:list){
//				System.out.println(s.getGoods_ishead());
//			}
			request.setAttribute("allGoods", list);
			
			request.getRequestDispatcher("index.jsp").forward(request, response);
			
			
			
		}else if("/zhuce".equals(str)){//ע��
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
