package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.entities.Note;

/**
 * Servlet implementation class AddNoteServlet
 */
public class AddNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddNoteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//fetching the data from the add form:
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		//creating the note object:
		Note note = new Note(title, content, new Date());
		
		//creating sessionFactory and session object for hibernate:
		SessionFactory sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.save(note);
		tx.commit();
		session.close();
		sessionFactory.close();
		
		//sending the response back to the client.
		
		PrintWriter pw = response.getWriter();
		pw.println("<h1>Record is saved in Database!!!</h1>");
		pw.println("<br>");
		pw.println("<h2><a href='index.jsp'>Go to home page</a></h2>");
	
	
	}

}
