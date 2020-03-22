package dao;

import java.util.List;

import beans.Absences;

public interface IAbsenceDAO {

	public void ajouterAbsence(Absences ab);
	public List<Absences> listeAbsences();
	public void supprimerAbsence(int idAbsence);
}
