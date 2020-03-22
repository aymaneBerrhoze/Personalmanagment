package dao;
import java.util.List;

import beans.Employes;


public interface IEmployeDAO {

	public void ajouterEmploye(Employes em);
	public void modifierEmploye(Employes em);
	public List<Employes> listeEmployes();
	public void supprimerEmploye(int idEmploye);
	public Employes chercherEmploye(int idEmploye);
	public boolean login1(String login, String pwd);
	public Employes getEmploye(String login, String pwd);
	public String[] listeEmployes2();
	public int chercherEmpCons(int idEmploye);
	public void RotationRight();
	public void RotationLeft();
	public int getNbrEmployes();
	
	
	
}
