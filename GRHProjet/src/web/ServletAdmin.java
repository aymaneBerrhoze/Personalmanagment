package web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.Admin;
import dao.IAdminDAO;
import dao.IAdminImplDAO;

/**
 * Servlet implementation class ServletAdmin
 */
@WebServlet(urlPatterns = {"/editAdmin","/updateAdmin","/ProfilAdmin"})
public class ServletAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private IAdminDAO adminMetier = new IAdminImplDAO();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletAdmin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getServletPath()!=null) {
		if(request.getServletPath().equals("/editAdmin")) {
			String loginAdmin = (request.getParameter("loginAdmin"));
			request.setAttribute("loginAdmin", adminMetier.chercherAdmin(loginAdmin));
			this.getServletContext().getRequestDispatcher("/Settings.jsp").forward(request, response);
		}
		 //Editer un Admin
		if(request.getServletPath().equals("/updateAdmin")) {
			Admin ad = new Admin();
			ad.setLoginAdmin(request.getParameter("loginAdmin"));
			ad.setMdpAdmin(request.getParameter("mdpAdmin"));
			
			
			adminMetier.modifierAdmin(ad);
			
			request.getRequestDispatcher("/HomeAdmin.jsp").forward(request, response); 
		}
		//Afficher les infos d'admin
		if(request.getServletPath().equals("/ProfilAdmin")) {
			String loginAdmin = (request.getParameter("loginAdmin"));
			request.setAttribute("loginAdmin", adminMetier.chercherAdmin(loginAdmin));
			this.getServletContext().getRequestDispatcher("/ProfilAdmin.jsp").forward(request, response);
		}
		}
	}

}
