package web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.Employes;
import dao.IEmployeImplDAO;

/**
 * Servlet implementation class ServletEmploye
 */
@WebServlet(urlPatterns = {"/ajouterEmploye","/rotationLeft","/AjouterAbsence","/rotationLeftA","/rotationRightA","/consempAARE","/consempAAcceuil","/consempAAutoEmploi","/consempAEPSE","/rotationRight", "/supprimerEmploye", "/listeEmploye", "/afficherEmploye","/listeEmployeE","/consemp","/updateEmploye","/consempAGeneral", "/edit"})
public class ServletEmploye extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private IEmployeImplDAO employeMetier = new IEmployeImplDAO();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletEmploye() {
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
			//Ajouter un employe
		if(request.getServletPath().equals("/ajouterEmploye")){	 
			System.out.println(2);
            int n=employeMetier.getNbrEmployes();
            if(n>=10) {
            	this.getServletContext().getRequestDispatcher("/PageErreur.jsp").forward(request, response);
            }
            else {
			System.out.println(3);
			Employes em1 = new Employes();
			em1.setIdEmploye(Integer.parseInt(request.getParameter("idEmploye")));
			em1.setNomEmploye(request.getParameter("nomEmploye"));
			em1.setEmailEmploye(request.getParameter("emailEmploye"));
			em1.setDateNaissanceEmploye(request.getParameter("dateNaissanceEmploye"));
			em1.setSalaireEmploye(Float.parseFloat(request.getParameter("salaireEmploye")));
			em1.setMdpEmploye(request.getParameter("mdpEmploye"));
			em1.setCniEmploye(request.getParameter("cniEmploye"));
			em1.setNumT(Integer.parseInt(request.getParameter("numT")));

			employeMetier.ajouterEmploye(em1);
			System.out.println(5);
			this.getServletContext().getRequestDispatcher("/HomeAdmin.jsp").forward(request, response);
            }
		}
		
		//Supprimer un Employe
		if (request.getServletPath().equals("/supprimerEmploye")) {
			int idEmploye = Integer.parseInt(request.getParameter("idEmploye"));
			employeMetier.supprimerEmploye(idEmploye);
			this.getServletContext().getRequestDispatcher("/HomeAdmin.jsp").forward(request, response);
		}
		
		// Lister les Employes
		if (request.getServletPath().equals("/listeEmploye")) { 
			System.out.println(4);
			request.setAttribute("employes", employeMetier.listeEmployes());
			this.getServletContext().getRequestDispatcher("/ListeEmploye.jsp").forward(request, response);
		}
		
		if (request.getServletPath().equals("/AjouterAbsence")) { 
			System.out.println(4);
			request.setAttribute("employes", employeMetier.listeEmployes());
			this.getServletContext().getRequestDispatcher("/AjouterAbsence.jsp").forward(request, response);
		}
		
		if(request.getServletPath().equals("/edit")) {
			int idEmploye = Integer.parseInt(request.getParameter("idEmploye"));
			request.setAttribute("idEmploye", employeMetier.chercherEmploye(idEmploye));
			this.getServletContext().getRequestDispatcher("/ModifierEmploye.jsp").forward(request, response);
		}
		 //Editer un employe
		if(request.getServletPath().equals("/updateEmploye")) {
			Employes em = new Employes();

			em.setNomEmploye(request.getParameter("nomEmploye"));
			em.setEmailEmploye(request.getParameter("emailEmploye"));
			em.setDateNaissanceEmploye(request.getParameter("dateNaissanceEmploye"));
			em.setSalaireEmploye(Float.parseFloat(request.getParameter("salaireEmploye")));
			em.setMdpEmploye(request.getParameter("mdpEmploye"));
			em.setCniEmploye(request.getParameter("cniEmploye"));
			
			employeMetier.modifierEmploye(em);
			
			request.getRequestDispatcher("/HomeAdmin.jsp").forward(request, response); 
		}
		// Lister les Employes(Partie Employe)
				if (request.getServletPath().equals("/listeEmployeE")) { 
					System.out.println(4);
					request.setAttribute("employes", employeMetier.listeEmployes());
					this.getServletContext().getRequestDispatcher("/ListeEmployesE.jsp").forward(request, response);
				}
		
		//Afficher Employe
		if (request.getServletPath().equals("/afficherEmploye")) {
			System.out.println(5);
			
			int idEmploye = Integer.parseInt(request.getParameter("idEmploye"));
			request.setAttribute("idEmploye", employeMetier.chercherEmploye(idEmploye));
			System.out.println(6);
			this.getServletContext().getRequestDispatcher("/AfficherEmploye.jsp").forward(request, response);
			request.setAttribute("idEmploye", idEmploye);
            System.out.println(55);
		}
		
		
		if (request.getServletPath().equals("/consemp")) {
			String [] emp = employeMetier.listeEmployes2();
			request.setAttribute("l", emp);
			int i =1;
			request.setAttribute("i", i);
			this.getServletContext().getRequestDispatcher("/ConsultationEmploye.jsp").forward(request, response);
		}
		
		if (request.getServletPath().equals("/consempAGeneral")) {
			String [] emp = employeMetier.listeEmployes2();
			request.setAttribute("l", emp);
			int i =1;
			request.setAttribute("i", i);
			this.getServletContext().getRequestDispatcher("/GestionDeploiementGeneral.jsp").forward(request, response);
		}
		
		if (request.getServletPath().equals("/consempAAcceuil")) {
			String [] emp = employeMetier.listeEmployes2();
			request.setAttribute("l", emp);
			int i =1;
			request.setAttribute("i", i);
			this.getServletContext().getRequestDispatcher("/GestionDeploiementAcceuil.jsp").forward(request, response);
		}
		
		if (request.getServletPath().equals("/consempAEPSE")) {
			String [] emp = employeMetier.listeEmployes2();
			request.setAttribute("l", emp);
			int i =1;
			request.setAttribute("i", i);
			this.getServletContext().getRequestDispatcher("/GestionDeploiementEPSE.jsp").forward(request, response);
		}
		
		if (request.getServletPath().equals("/consempAAutoEmploi")) {
			String [] emp = employeMetier.listeEmployes2();
			request.setAttribute("l", emp);
			int i =1;
			request.setAttribute("i", i);
			this.getServletContext().getRequestDispatcher("/GestionDeploiementAutoEmploi.jsp").forward(request, response);
		}
		
		if (request.getServletPath().equals("/consempAARE")) {
			String [] emp = employeMetier.listeEmployes2();
			request.setAttribute("l", emp);
			int i =1;
			request.setAttribute("i", i);
			this.getServletContext().getRequestDispatcher("/GestionDeploiementARE.jsp").forward(request, response);
		}
		
		//rotation à gauche
		if (request.getServletPath().equals("/rotationLeft")) {
			employeMetier.RotationLeft();
			String [] emp = employeMetier.listeEmployes2();
			request.setAttribute("l", emp);
			int i= Integer.parseInt(request.getParameter("i"));
			i--;
	        request.setAttribute("i", i);
			this.getServletContext().getRequestDispatcher("/ConsultationEmploye.jsp").forward(request, response);
		}
		
		//rotation à droite
		if (request.getServletPath().equals("/rotationRight")) {
			employeMetier.RotationRight();
			String [] emp = employeMetier.listeEmployes2();
			request.setAttribute("l", emp);
			int i= Integer.parseInt(request.getParameter("i"));
			i++;
	        request.setAttribute("i", i);
			this.getServletContext().getRequestDispatcher("/ConsultationEmploye.jsp").forward(request, response);
		}
		
		//rotation à gauche Admin
				if (request.getServletPath().equals("/rotationLeftA")) {
					employeMetier.RotationLeft();
					String [] emp = employeMetier.listeEmployes2();
					request.setAttribute("l", emp);
					int i= Integer.parseInt(request.getParameter("i"));
					i--;
			        request.setAttribute("i", i);
					this.getServletContext().getRequestDispatcher("/GestionDeploiementGeneral.jsp").forward(request, response);
				}
				
				//rotation à droite Admin
				if (request.getServletPath().equals("/rotationRightA")) {
					employeMetier.RotationRight();
					String [] emp = employeMetier.listeEmployes2();
					request.setAttribute("l", emp);
					int i= Integer.parseInt(request.getParameter("i"));
					i++;
			        request.setAttribute("i", i);
					this.getServletContext().getRequestDispatcher("/GestionDeploiementGeneral.jsp").forward(request, response);
				}
				
				if (request.getServletPath().equals("/home")) {
					int i = Integer.parseInt(request.getParameter("i"));
					
					request.setAttribute("i", i);
					
				}
				
		}
	}

}
