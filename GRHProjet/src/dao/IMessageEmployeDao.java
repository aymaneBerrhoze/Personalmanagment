package dao;

import java.util.List;

import beans.MessageEmploye;



public interface IMessageEmployeDao {

	public void EnvoyerMessage(MessageEmploye messageEmploye);
	public List<MessageEmploye> ListeMessages() ;
    public void supprimerMessage(int id) ; 
    public MessageEmploye get_Message(int id);
}
