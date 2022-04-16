package com.servlets;

import java.io.IOException;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.entities.Note;

/**
 * Servlet implementation class UpdateServelet
 */
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		int iid = Integer.parseInt(id);
		
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		SessionFactory sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
		Session session1 = sessionFactory.openSession();
		Transaction tx = session1.beginTransaction();
		Note note = session1.get(Note.class, iid);
		
		note.setTitle(title);
		note.setContent(content);
		note.setAddedDate(new Date());
		
		tx.commit();
		session1.close();
		sessionFactory.close();
		
		response.sendRedirect("showAllNote.jsp");
	}

}
