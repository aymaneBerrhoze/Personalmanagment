package web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import beans.MessageEmploye;
import dao.IMessageEmployeDao;
import dao.IMessageEmployeImpl;

/**
 * Servlet implementation class ServletMessage
 */
@WebServlet(urlPatterns = {"/EnvoyerMessage","/listeMessage","/afficherMessage","/supprimerMessage"})
public class ServletMessage extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private IMessageEmployeDao messageMetier = new IMessageEmployeImpl();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletMessage() {
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
		//Envoyer un message
		
		if(request.getServletPath().equals("/EnvoyerMessage")) {
			System.out.println(11);
			MessageEmploye message = new MessageEmploye();
			message.setNomEmploye(request.getParameter("nomEmploye"));
			message.setSujetMessage(request.getParameter("sujetMessage"));
			message.setMessage(request.getParameter("message"));
			
			
			messageMetier.EnvoyerMessage(message);;
            System.out.println(12);
			this.getServletContext().getRequestDispatcher("/HomeEmploye.jsp").forward(request, response);
		}
	//Liste des messages	
		if(request.getServletPath().equals("/listeMessage")) {
			System.out.println("Mouataz");
			request.setAttribute("messages", messageMetier.ListeMessages());
			this.getServletContext().getRequestDispatcher("/Contacts.jsp").forward(request, response);
		}
		
    //Afficher le message
		
		if (request.getServletPath().equals("/afficherMessage")) {
			
			int idMessage = Integer.parseInt(request.getParameter("idMessage"));
			request.setAttribute("idMessage", messageMetier.get_Message(idMessage));
			
			this.getServletContext().getRequestDispatcher("/ListeMessageDetaillée.jsp").forward(request, response);
			request.setAttribute("idMessage", idMessage);
			System.out.println(idMessage);
            
		}
		
	//Supprimer le message
		if (request.getServletPath().equals("/supprimerMessage")) {
			int idMessage = Integer.parseInt(request.getParameter("idMessage"));
			messageMetier.supprimerMessage(idMessage);
			this.getServletContext().getRequestDispatcher("/HomeAdmin.jsp").forward(request, response);
		}
		
	}
		}

}
