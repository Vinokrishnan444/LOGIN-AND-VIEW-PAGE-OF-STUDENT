package com.xxx.Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.xxx.Model.Details;
import com.xxx.bl.studentCRUD;

@WebServlet("/viewdemo")
public class viewdemo extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public viewdemo() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		studentCRUD c = new studentCRUD();
		try {
			ArrayList<Details> lis = c.Selectdetails();
			request.setAttribute("li", lis);
			request.setAttribute("viewdemo", true);
			RequestDispatcher rd1 = request.getRequestDispatcher("views/index.jsp");
			rd1.forward(request, response);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
