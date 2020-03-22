package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import beans.Absences;

public class IAbsenceImplDAO implements IAbsenceDAO {

	@Override
	public void ajouterAbsence(Absences ab) {
		Connection connexion = DAOFACTORY.getConnection();
		try {
			PreparedStatement ps=connexion.prepareStatement(" insert into absences(motifAbsence,natureAbsence,dateAbsence,nomEmploye) values(?,?,?,?)" ); 
			
			ps.setString(1, ab.getMotifAbsences());
			ps.setString(2, ab.getNatureAbsences());
			ps.setString(3, ab.getDateAbsences());
			ps.setString(4, ab.getNomEmploye());
			
			
			ps.executeUpdate();
	        ps.close();
	}catch (Exception e) {
		e.printStackTrace();
		System.out.println("error");
	}
	}

	@Override
	public List<Absences> listeAbsences() {
		List<Absences> absences = new ArrayList<Absences>();
		
		Connection connexion = DAOFACTORY.getConnection();
		try {
			PreparedStatement ps=connexion.prepareStatement("select  nomEmploye , count(idAbsence) from absences   group by nomEmploye ;");
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				Absences ab=new Absences();
				ab.setNomEmploye(rs.getString("nomEmploye"));
				ab.setNbreAbsence(rs.getInt("count(idAbsence)"));
				absences.add(ab);
			}
			ps.close();
		}catch (Exception e) {
			e.printStackTrace();
			System.out.println("error");
		}
		return absences;
	}
	
	
	@Override
	public void supprimerAbsence(int idAbsence) {
		Connection connexion = DAOFACTORY.getConnection();
		try {
			PreparedStatement ps=connexion.prepareStatement("delete from absences\r\n" + 
					"where idAbsence=? ; ");
			ps.setInt(1, idAbsence);
			ps.executeUpdate();
	        ps.close();
			
		
	}catch (Exception e) {
		e.printStackTrace();
		System.out.println("error");
	}
	}
	

}
