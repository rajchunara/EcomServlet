package com.serv.servlets;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;


@WebServlet("/AddProduct")
public class AddProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public AddProduct() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	
	}


	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		ServletFileUpload sf= new ServletFileUpload( new DiskFileItemFactory());
		System.out.println(request.getParameter("productname"));
		
		String filePath = "\\Users\\raj.chunara\\JavaEclipseWorkspace\\ServletTrial\\WebContent\\src\\UploadedProductImages\\";
		
		
		String fileNameLocation; 
				
		
		try {
			List<FileItem> file =   sf.parseRequest(request);
			
			try {
				for(FileItem item: file){
					
			     fileNameLocation = filePath+ item.getName();
			     System.out.println(fileNameLocation);
				 item.write(new File(fileNameLocation));
				 System.out.println("FileUploaded");
				 
				}
				response.sendRedirect("src/components/AddProduct.jsp");
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}							
						
		} catch (FileUploadException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

}
