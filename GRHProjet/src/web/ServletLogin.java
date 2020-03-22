package web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.Admin;
import dao.IAdminDAO;
import dao.IAdminImplDAO;
import dao.IEmployeDAO;
import dao.IEmployeImplDAO;
import beans.Employes;

/**
 * Servlet implementation class ServletLogin
 */
@WebServlet(urlPatterns = {"/ConnexionAdmin","/logout","/connexionEm"})
public class ServletLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	private IAdminDAO adminMetier = new IAdminImplDAO();
	private IEmployeDAO employeMetier = new IEmployeImplDAO();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletLogin() {
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
		HttpSession session =request.getSession(); 
		System.out.println(1);
		if (request.getServletPath().equals("/ConnexionAdmin")) {
			System.out.println(4);
			if(adminMetier.login(request.getParameter("loginAdmin"), request.getParameter("mdpAdmin"))){
				Admin ad= adminMetier.getAdmin(request.getParameter("loginAdmin"), request.getParameter("mdpAdmin"));
				System.out.println(ad.getLoginAdmin()+"________________");
				session.setAttribute("admin", request.getParameter("loginAdmin"));
				System.out.println("hey");
				
				request.getRequestDispatcher("/HomeAdmin.jsp").forward(request, response); 		    	 
			}
			else {
				session.setAttribute("admin", null);
				int testA = 1 ; 
				String erreurA = "Mot de passe ou nom d'utilisateur incorrect ! ";
				session.setAttribute("testA", testA);
				session.setAttribute("eA", erreurA);
				System.out.println(erreurA);
				request.getRequestDispatcher("/Login.jsp").forward(request, response);
				
			}
		}
		
		if(request.getServletPath().equals("/logout")) {
			System.out.println(00);
			session.invalidate();
			System.out.println(99);
			response.sendRedirect("Login.jsp");
		
	}
		 if (request.getServletPath().equals("/connexionEm")) {
				System.out.println(5);
				if(employeMetier.login1(request.getParameter("emailEmploye"), request.getParameter("mdpEmploye"))){
					System.out.println(6);
					Employes em= employeMetier.getEmploye(request.getParameter("emailEmploye"), request.getParameter("mdpEmploye"));
					System.out.println(em.getNomEmploye()+"________________");
					session.setAttribute("Employe", request.getParameter("nomEmploye"));
					System.out.println(request.getParameter("mdpEmploye"));
					
					request.getRequestDispatcher("/HomeEmploye.jsp").forward(request, response); 	 
				}
			else {
				session.setAttribute("Employe", null);
				int test1 = 1 ; 
				String erreur1 = "Mot de passe ou Email incorrect ! ";
				request.setAttribute("test1", test1);
				request.setAttribute("e1", erreur1);
				System.out.println(erreur1);
				request.getRequestDispatcher("/Login.jsp").forward(request, response);  
				}
		}
	}

}
