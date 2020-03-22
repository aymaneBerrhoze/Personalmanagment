package web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.Absences;
import dao.IAbsenceDAO;
import dao.IAbsenceImplDAO;

/**
 * Servlet implementation class ServletAbsence
 */
@WebServlet(urlPatterns = {"/ajouterAbsence","/listeAbsence","/supprimerAbsence"})
public class ServletAbsence extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private IAbsenceDAO absenceMetier = new IAbsenceImplDAO();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletAbsence() {
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
			
		// Ajouter une absence :
		if(request.getServletPath().equals("/ajouterAbsence")){	 
				System.out.println(3);
				Absences ab1 = new Absences();
				ab1.setMotifAbsences(request.getParameter("motifAbsence"));
				ab1.setNatureAbsences(request.getParameter("natureAbsence"));
				ab1.setDateAbsences(request.getParameter("dateAbsence"));
				ab1.setNomEmploye(request.getParameter("nomEmploye"));
				
				absenceMetier.ajouterAbsence(ab1);
				System.out.println(11);
				this.getServletContext().getRequestDispatcher("/HomeAdmin.jsp").forward(request, response);
			}
		// Lister les Absences
				if (request.getServletPath().equals("/listeAbsence")) { 
					System.out.println(4);
					request.setAttribute("absences", absenceMetier.listeAbsences());
					this.getServletContext().getRequestDispatcher("/ListeAbsence.jsp").forward(request, response);
				}
		//Supprimer une absence
				if (request.getServletPath().equals("/supprimerAbsence")) {
					int idAbsence = Integer.parseInt(request.getParameter("idAbsence"));
					absenceMetier.supprimerAbsence(idAbsence);
					this.getServletContext().getRequestDispatcher("/HomeAdmin.jsp").forward(request, response);
				}
		
		}
	}

}
