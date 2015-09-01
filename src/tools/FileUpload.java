package tools;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

public class FileUpload {
	public static String fileUpload(HttpServletRequest request){
		/**
		 * ����һ���ļ���Ϣ����
		 * 
		 */
		 DiskFileItemFactory factory = new DiskFileItemFactory();
		 /**
		  * �ѹ���ת����servletFileUpload����
		  */
	        ServletFileUpload fileUpload = new ServletFileUpload(factory);
	        OutputStream outputStream = null;
	        InputStream inputStream = null;
	        String lastFileName=null;
	        try {
	        	/**
	        	 * ͨ��servletFileUpload����ȥ����request����
	        	 */
	            List items = fileUpload.parseRequest(request);
	            for (Iterator iterator = items.iterator(); iterator.hasNext();) {
	                FileItem name = (FileItem) iterator.next();
	                if(!name.isFormField()){
	                    String fieldName  = name.getFieldName();
	                    String fileName = name.getName();
	                                        lastFileName = request.getSession().getServletContext().getRealPath("\\images\\upload\\")
	                            + System.currentTimeMillis()
	                            + fieldName.substring(fileName.lastIndexOf("."));
	                    
	                    outputStream = new FileOutputStream(lastFileName);
	                    inputStream = name.getInputStream();
	                    byte[] bs = new byte[1024];
	                    int length = 0;
	                    while(null != inputStream && (length = inputStream.read(bs))!=-1){
	                        outputStream.write(bs);
	                    }
	                }
	    //��lastFileName�浽���ݿ⣨����Ͳ�д�˲�ֻlz�õ�ʲô��ʽ��
	            }
	        } catch (Exception e) {
	            // TODO: handle exception
	        }finally{
	        	try {
					inputStream.close();
					outputStream.flush();
					outputStream.close();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
	        }
			return lastFileName; 
	}
}
