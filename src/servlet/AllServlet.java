package servlet;

import java.io.IOException;
import java.util.ArrayList;
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
		HttpSession session = request.getSession();
		//��ȡ�������ַ
		String str=request.getRequestURI().substring(request.getRequestURI().lastIndexOf("/"), request.getRequestURI().lastIndexOf("."));
		//��½
		if("/login".equals(str)){
			String username=request.getParameter("inputEmail");
			String pwd=request.getParameter("inputPassword");
			
			
			String info=loginService.findUserByUserName(username, pwd);
			String mages=null;
			if("0".equals(info)){//�û���Ϊ��
				
				mages="�û���������";
				request.setAttribute("msg", mages);
				request.getRequestDispatcher("login.jsp").forward(request, response);
			}else if("1".equals(info)){//�������
				
				mages="�������";
				request.setAttribute("msg", mages);
				request.getRequestDispatcher("login.jsp").forward(request, response);
			}else if("2".equals(info)){//����
				
				User user=loginService.finUser(username);
				mages=" ";
				request.setAttribute("msg", mages);
				session.setAttribute("user", user);
				request.getRequestDispatcher("index.do").forward(request, response);
			}
						
		}
		/**
		 * 
		 * ��ҳҵ��ʵ��
		 * 
		**/
		else if("/index".equals(str)){
			IndexDaoImp in=new IndexDaoImp();
			List <Integer>CountList=new ArrayList<Integer>();
			List <Goods>list;
			String s=request.getParameter("id");
			String kind=request.getParameter("name");
			String ids = null;
			if(kind==null){		
				kind="�Ƽ���Ʒ";
			}else{
			kind=new String(kind.getBytes("ISO-8859-1"),"UTF-8");
			kind=kind.replace("'", "");		
			}
		
			if("�Ƽ���Ʒ".equals(kind)){
				ids="1";
			}else if("��������".equals(kind)){
				ids="2";
			}else if("�Ƽ�������".equals(kind)){
				ids="3";
			}else if("����".equals(kind)){
				ids="4";
			}
			
			int page;
			if(s==null){
				page=1;
				list=in.findAll(page,kind);
			}else{
				 page=Integer.valueOf(s);
				list=in.findAll(page,kind);//���1����	
			}
			
			int count=in.findCount(kind);//���ҳ
			for(int i=1;i<=count;i++){
				CountList.add(i);
				
			}
			
			request.setAttribute("ids", ids);
			request.setAttribute("page", page);
			request.setAttribute("CountList", CountList);
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
