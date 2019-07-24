package com.xxx.Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.xxx.Model.Details;
import com.xxx.bl.studentCRUD;

@WebServlet("/register")
public class register extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public register() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("views/index.jsp");
		request.setAttribute("update", false);
		request.setAttribute("register", true);
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher rd;
		Details det = new Details();
		System.out.println("hellooooo");
		try {
			det.setStuname(request.getParameter("username"));
			det.setEmail(request.getParameter("email"));
			det.setPhno(request.getParameter("phno"));
			det.setJobtype(request.getParameter("jobtype"));
			String pass = request.getParameter("userpass").toString();
			String cpass = request.getParameter("resetpass").toString();
			if (pass.equals(cpass)) {
				det.setUserpass(pass);
				studentCRUD c1 = new studentCRUD();

				if (c1.addDetails(det)) {
					request.setAttribute("status", true);
					request.setAttribute("message", "inserted successfully");
					request.setAttribute("det", new Details());
				} else {
					request.setAttribute("status", true);
					request.setAttribute("message", "Not inserted");
					request.setAttribute("det", det);
				}
			} else {
				request.setAttribute("status", true);
				request.setAttribute("message", "Password and Confirm Password not match");
				request.setAttribute("det", det);
			}
		} catch (Exception e) {

			request.setAttribute("status", true);
			request.setAttribute("message", "server problem");
			System.err.println(e.getMessage());
		}
		request.setAttribute("update", false);
		request.setAttribute("register", true);
		rd = request.getRequestDispatcher("views/index.jsp");
		rd.forward(request, response);
	}
}
