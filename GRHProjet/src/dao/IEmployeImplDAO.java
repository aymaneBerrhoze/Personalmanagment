package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import dao.IEmployeDAO;
import beans.Employes;

public class IEmployeImplDAO implements IEmployeDAO {

	@Override
	public void ajouterEmploye(Employes em) {
		Connection connexion = DAOFACTORY.getConnection();
		try {
			PreparedStatement ps=connexion.prepareStatement(" insert into employes(idEmploye,nomEmploye,emailEmploye,dateNaissanceEmploye,salaireEmploye,mdpEmploye,cniEmploye,numT)  values(?,?,?,?,?,?,?,?)"); 
			ps.setInt(1, em.getIdEmploye());
			ps.setString(2, em.getNomEmploye());
			ps.setString(3, em.getEmailEmploye());
			ps.setString(4, em.getDateNaissanceEmploye());
			ps.setFloat(5, em.getSalaireEmploye());
			ps.setString(6, em.getMdpEmploye());
			ps.setString(7, em.getCniEmploye());
			ps.setInt(8, em.getNumT());
			
			ps.executeUpdate();
	        ps.close();
	}catch (Exception e) {
		e.printStackTrace();
		System.out.println("error");
	}
		
		
	}

	@Override
	public void modifierEmploye(Employes em) {
		Connection connexion = DAOFACTORY.getConnection();
		try {
			PreparedStatement ps=connexion.prepareStatement("update employes \r\n" + 
					"set  nomEmploye=? , emailEmploye=? , dateNaissanceEmploye=? , salaireEmploye=?  , mdpEmploye=?  , cniEmploye=? \r\n" +
					"where nomEmploye=? ;");
			
			ps.setString(1, em.getNomEmploye());
			ps.setString(2, em.getEmailEmploye());
			ps.setString(3, em.getDateNaissanceEmploye());
			ps.setFloat(4, em.getSalaireEmploye());
			ps.setString(5, em.getMdpEmploye());
			ps.setString(6, em.getCniEmploye());
			ps.setString(7, em.getNomEmploye());
			
			ps.executeUpdate();
	        ps.close();
		}catch (Exception e) {
			e.printStackTrace();
			System.out.println("error");
		}
		
	}

	@Override
	public List<Employes> listeEmployes() {
		List<Employes> employes = new ArrayList<Employes>();
		Connection connexion = DAOFACTORY.getConnection();
		try {
			PreparedStatement ps=connexion.prepareStatement("select * from employes");
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				Employes em=new Employes();
				em.setIdEmploye(rs.getInt("idEmploye"));
				em.setNomEmploye(rs.getString("nomEmploye"));
				em.setEmailEmploye(rs.getString("emailEmploye"));
				em.setDateNaissanceEmploye(rs.getString("dateNaissanceEmploye"));
				em.setSalaireEmploye(rs.getFloat("salaireEmploye"));
				em.setMdpEmploye(rs.getString("mdpEmploye"));
				em.setCniEmploye(rs.getString("cniEmploye"));
				
				
				employes.add(em);
			}
			ps.close();
		}catch (Exception e) {
			e.printStackTrace();
			System.out.println("error");
		}
		return employes;
	}

	@Override
	public void supprimerEmploye(int idEmploye) {
		Connection connexion = DAOFACTORY.getConnection();
		try {
			PreparedStatement ps=connexion.prepareStatement("delete  from employes where  idEmploye=? ; ");
			ps.setInt(1, idEmploye);
			ps.executeUpdate();
	        ps.close();
			
		
	}catch (Exception e) {
		e.printStackTrace();
		System.out.println("error");
	}
		
	}

	@Override
	public Employes chercherEmploye(int idEmploye) {
		Employes em = null ; 
		Connection connexion = DAOFACTORY.getConnection();
		try {
			PreparedStatement ps = connexion.prepareStatement( 
					" select * from employes where idEmploye=? ");
			ps.setInt(1, idEmploye);
			ResultSet rs=ps.executeQuery();
			if(rs.next()) {
				em  = new Employes();
				em.setIdEmploye(rs.getInt("idEmploye"));
				em.setNomEmploye(rs.getString("nomEmploye"));
				em.setEmailEmploye(rs.getString("emailEmploye"));
				em.setDateNaissanceEmploye(rs.getString("dateNaissanceEmploye"));
				em.setSalaireEmploye(rs.getFloat("salaireEmploye"));
				em.setMdpEmploye(rs.getString("mdpEmploye"));
				em.setCniEmploye(rs.getString("cniEmploye"));
				
			}
			  ps.close();


		} catch (SQLException e) {
			e.printStackTrace();
		}
		return em;
	}

	

	@Override
	public boolean login1(String login, String pwd) {
		boolean a=false;	
		Connection connection = DAOFACTORY.getConnection();
		try {
			System.out.println("login: "+login+" mdp: "+pwd+" ");
			PreparedStatement ps  = connection.prepareStatement("SELECT mdpEmploye FROM employes WHERE emailEmploye=?");
			ps.setString(1, login);
			ResultSet rs = ps.executeQuery();
			if(rs.next() && rs.getString("mdpEmploye").equals(pwd) ){
				a=true;			
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return a;	
	}

	@Override
	public Employes getEmploye(String login, String pwd) {
		Connection connection= DAOFACTORY.getConnection();
		Employes em  = new Employes();
		try {
			PreparedStatement ps = connection.prepareStatement 
					("SELECT idEmploye, nomEmploye, emailEmploye, dateNaissanceEmploye, salaireEmploye, cniEmploye, mdpEmploye  FROM employes WHERE emailEmploye=? and mdpEmploye=?");
			ps.setString(1, login);
			ps.setString(2, pwd);
            ResultSet rs = ps.executeQuery();		
			if(rs.next()){
				em.setIdEmploye(rs.getInt("idEmploye"));
				em.setNomEmploye(rs.getString("nomEmploye"));
				em.setDateNaissanceEmploye(rs.getString("dateNaissanceEmploye"));
				em.setEmailEmploye(login);
				em.setSalaireEmploye(rs.getFloat("salaireEmploye"));
				em.setCniEmploye(rs.getString("cniEmploye"));
				em.setMdpEmploye(rs.getString("mdpEmploye"));
						
			}	
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return em;
	}

	
	public String[] listeEmployes2() {
		String [] employes = new String[10];
		Connection connexion = DAOFACTORY.getConnection();
		try {
			PreparedStatement ps=connexion.prepareStatement("SELECT nomEmploye ,numT FROM employes    order by numT;");
			ResultSet rs = ps.executeQuery();
			int i =0;
			while(rs.next()) {
			employes[i]=rs.getString("nomEmploye");
			i++ ;
			}
			ps.close();
		}catch (Exception e) {
			e.printStackTrace();
			System.out.println("error");
		}
		return employes;
	}
	
	public int chercherEmpCons(int idEmploye) {
		int em = 0 ; 
		Connection connexion = DAOFACTORY.getConnection();
		try {
			PreparedStatement ps = connexion.prepareStatement( 
					" select numT from employes where idEmploye=? ");
			ps.setInt(1, idEmploye);
			ResultSet rs=ps.executeQuery();
			if(rs.next()) {
			 em = rs.getInt("numT");
				
			}
			  ps.close();


		} catch (SQLException e) {
			e.printStackTrace();
		}
		return em;
	}
	
	public void RotationRight() {
		Connection connexion = DAOFACTORY.getConnection();
		PreparedStatement ps = null ; 
		int j , k ;
		int n = getNbrEmployes();
		try {
			for(int i=1 ; i<=n ; i++) {
				j = chercherEmpCons(i);
				if(j==n)
					k=1 ; 
				else 
					k=j+1;
				
			ps =connexion.prepareStatement("update employes set numT = ? where idEmploye = ? ; " );
			    ps.setInt(1, k);
				ps.setInt(2, i);
			ps.executeUpdate();
		    
			}
			 ps.close();
	}catch (Exception e) {
		e.printStackTrace();
		System.out.println("error");
	}
	}
	
	public void RotationLeft() {
		Connection connexion = DAOFACTORY.getConnection();
		PreparedStatement ps = null ; 
		int j , k ;
		int n = getNbrEmployes();
		try {
			for(int i=1 ; i<=n ; i++) {
				j = chercherEmpCons(i);
				if(j==1)
					k=n ; 
				else 
					k=j-1;
				
			ps =connexion.prepareStatement("update employes set numT = ? where idEmploye = ? ; " );
			    ps.setInt(1, k);
				ps.setInt(2, i);
			ps.executeUpdate();
		    
			}
			 ps.close();
	}catch (Exception e) {
		e.printStackTrace();
		System.out.println("error");
	}
	}

	@Override
	public int getNbrEmployes() {
		Connection connexion = DAOFACTORY.getConnection();
		int n = 0 ;
		try {
			PreparedStatement ps=connexion.prepareStatement("select count(idEmploye) from employes  ; "); 

			ResultSet res = ps.executeQuery();
			while(res.next()) {
				n = res.getInt("count(idEmploye)");
			}ps.close();
		}catch (Exception e) {
			e.printStackTrace();
			System.out.println("error");
		}
	    	
			return n ;
	}

		
	

}
